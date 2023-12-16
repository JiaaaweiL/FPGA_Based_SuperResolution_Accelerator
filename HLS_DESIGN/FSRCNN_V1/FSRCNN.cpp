
#include "wrapper.hpp"
#include <cmath>

fixed_num MIN(fixed_num a){
    fixed_num z = 0;
    if(a < z)
        return a;
    else
        return z;
}
fixed_num MAX(fixed_num a){
    fixed_num z = 0;
    if(a > z)
        return a;
    else
        return z;
}



void CORRELATE(fixed_num prev_output_channel[MAX_FILTERSIZE][PADDED_WIDTH], int prev_height, int prev_width, fixed_num filter[MAX_FILTERSIZE], int filter_size, fixed_num correlate_img[INPUT_WIDTH])
{
    int filter_width = sqrt(filter_size);
    int column_index_after_stride;
    fixed_num sum;
    int index_filter;
    int cnt = filter_width * filter_width;
//    for (int index_output_value = 0; index_output_value < INPUT_WIDTH; index_output_value++)
//        {
//            column_index_after_stride = index_output_value * stride;
//            index_filter = 0;
//            sum = 0;
//            for (int k_x = 0; k_x < filter_width; k_x++)
//            {
//                for (int k_y = column_index_after_stride; k_y < column_index_after_stride + filter_width; k_y++)
//                {
//                    sum += prev_output_channel[k_x][k_y] * filter[index_filter];
//                    index_filter = index_filter + 1;
//                }
//            }
//            correlate_img[index_output_value] = sum;
//        }

    for (int index = 0; index < INPUT_WIDTH * filter_width * filter_width; index++)
    {
    	#pragma HLS loop_tripcount min=cnt max=cnt avg=cnt
        int index_output_value = index / (filter_width * filter_width);
        int k_x = (index % (filter_width * filter_width)) / filter_width;
        int k_y = index % filter_width + index_output_value;

        if (index_output_value < INPUT_WIDTH && k_y < INPUT_WIDTH)
        {
            if (k_x == 0 && (index % filter_width) == 0)
            {
                // Reset sum and index_filter for each new index_output_value
                sum = 0;
                index_filter = 0;
            }

            sum += prev_output_channel[k_x][k_y] * filter[index_filter];
            index_filter++;

            if (k_x == filter_width - 1 && (index % filter_width) == filter_width - 1)
            {
                // Store the result for each complete computation of sum
                correlate_img[index_output_value] = sum;
            }
        }
    }


}

//            int products[81];
//            for (int i = 0; i < 81; i = i + 1){
//            	products[i] = 0;
//            }
//            int index = 0;
//            // Flatten the operations (Unrolling the loop)
//            for (int k_x = 0; k_x < filter_width; k_x++) {
//                for (int k_y = column_index_after_stride; k_y < column_index_after_stride + filter_width; k_y++) {
//                    products[index] = prev_output_channel[k_x][k_y] * filter[index];
//                    index++;
//                }
//            }
//
//            // Adder Tree
//            int level = ceil(log2(filter_width * filter_width)); // Determine the number of levels in the tree
//            int num_elements = filter_width * filter_width;
//
//            for (int i = 0; i < level; i++) {
//                int new_num_elements = ceil(num_elements / 2.0);
//                for (int j = 0; j < new_num_elements; j++) {
//                    if (2 * j + 1 < num_elements) {
//                        products[j] = products[2 * j] + products[2 * j + 1];
//                    } else {
//                        products[j] = products[2 * j];
//                    }
//                }
//                num_elements = new_num_elements;
//            }
//
//            int sum = products[0]; // Final sum




void DECORRELATE(fixed_num padded_channel[NUM_DECOR][PAD_WIDTH_LAYER8], int prev_height, int prev_width, fixed_num filter[FILTERSIZE_LAYER8], int stride, fixed_num expanded_channel[MAX_EXPANDED_HEIGHT][MAX_EXPANDED_WIDTH])
{
    int row_index_after_stride, column_index_after_stride;
    for (int i = 0; i<MAX_EXPANDED_HEIGHT; i++)
    {
#pragma HLS pipeline
        for (int j = 0; j<MAX_EXPANDED_WIDTH; j++)
        {
            expanded_channel[i][j] = 0;
        }
    }
//    for (int i = 0; i < NUM_DECOR; i++)
//        {
//            for (int j = 0; j < PAD_WIDTH_LAYER8; j++)
//            {
//                row_index_after_stride = i * stride;
//                column_index_after_stride = j * stride;
//                for (int x = row_index_after_stride; x < row_index_after_stride + FILTERSIZE1_LAYER8; x++)
//                {
//                    for (int y = column_index_after_stride; y < column_index_after_stride + FILTERSIZE1_LAYER8; y++)
//                    {
//                        expanded_channel[x][y] = expanded_channel[x][y] + padded_channel[i][j] * filter[(x-row_index_after_stride)*FILTERSIZE1_LAYER8+y-column_index_after_stride];
//                    }
//                }
//            }
//        }

    for (int x = 0; x < (NUM_DECOR * stride + FILTERSIZE1_LAYER8); x++)
    {
        for (int y = 0; y < (PAD_WIDTH_LAYER8 * stride + FILTERSIZE1_LAYER8); y++)
        {
            // Reverse calculate i and j from x and y
            int i = x / stride;
            int j = y / stride;

            // Check if i and j are within the required range
            if (i < NUM_DECOR && j < PAD_WIDTH_LAYER8)
            {
                int row_index_after_stride = i * stride;
                int column_index_after_stride = j * stride;

                // Check if x and y are within the specific range for this i and j
                if (x >= row_index_after_stride && x < row_index_after_stride + FILTERSIZE1_LAYER8 &&
                    y >= column_index_after_stride && y < column_index_after_stride + FILTERSIZE1_LAYER8)
                {
                    expanded_channel[x][y] = expanded_channel[x][y] + padded_channel[i][j] * filter[(x - row_index_after_stride) * FILTERSIZE1_LAYER8 + y - column_index_after_stride];
                }
            }
        }
    }

}

//#pragma HLS loop_tripcount min=9 max=9 avg=9

///CORRELATION LAYERS


void layer1(stream_t& stream_in, stream_t2& corr1_out, ap_uint<8> height, ap_uint<8> width, ap_uint<3> color)
{

    fixed_num subfilter_layer[FILTERSIZE_LAYER1];
    fixed_num correlate_img[INPUT_WIDTH];
    my_data out_layer[FILTERS_LAYER1][INPUT_WIDTH];
    fixed_num aux_sum;
    package_t buffer[FILTERSIZE1_LAYER1][PAD_WIDTH_LAYER1]; //On-chip buffer storing intermediate image output
    fixed_num img_channel[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER1; row_idx++)
    {
        //shift buffer lines to make space for the new line
        if (row_idx >= FILTERSIZE1_LAYER1)
        {
            for (int buffer_line = 0; buffer_line < FILTERSIZE1_LAYER1 - 1; buffer_line++)
            {
                for (int buffer_col = 0; buffer_col < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER1; buffer_col++)
                {
#pragma HLS pipeline
                    buffer[buffer_line][buffer_col] = buffer[buffer_line + 1][buffer_col];
                    img_channel[buffer_line][buffer_col] = img_channel[buffer_line + 1][buffer_col];
                }
            }
        }
        //read new lines, normalize the values and perform padding
        //to keep the size of the input image after correlation operation
        if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER1 + 1 && row_idx < FILTERSIZE1_LAYER1 - 1))
        {
            //read a new line and normalize the values
            for (int buffer_col = PADDING_NUMBER_LAYER1; buffer_col < INPUT_WIDTH + PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                stream_in>>buffer[row_idx][buffer_col];
                img_channel[row_idx][buffer_col] = (fixed_num)buffer[row_idx][buffer_col].data.range(8*(color+1)-1,8*color)/255;
            }
            //pad the first padding_number columns
            for (int buffer_col = 0; buffer_col < PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[row_idx][buffer_col] = buffer[row_idx][PADDING_NUMBER_LAYER1];
                img_channel[row_idx][buffer_col] = img_channel[row_idx][PADDING_NUMBER_LAYER1];
            }
            //pad the last padding_number columns
            for (int buffer_col = INPUT_WIDTH + PADDING_NUMBER_LAYER1; buffer_col < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[row_idx][buffer_col] = buffer[row_idx][INPUT_WIDTH + PADDING_NUMBER_LAYER1 - 1];
                img_channel[row_idx][buffer_col] = img_channel[row_idx][INPUT_WIDTH + PADDING_NUMBER_LAYER1 - 1];
            }
        }
        //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
        if (row_idx < PADDING_NUMBER_LAYER1 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER1 -1 && row_idx != 0)
        {
            //read a new line and normalize the values
            for (int buffer_col = PADDING_NUMBER_LAYER1; buffer_col < INPUT_WIDTH + PADDING_NUMBER_LAYER1; buffer_col++)
            {
                stream_in>>buffer[FILTERSIZE1_LAYER1 - 1][buffer_col];
                img_channel[FILTERSIZE1_LAYER1 - 1][buffer_col] = (fixed_num)buffer[FILTERSIZE1_LAYER1 - 1][buffer_col].data.range(8*(color+1)-1,8*color)/255;
            }
            //pad the first padding_number columns
            for (int buffer_col = 0; buffer_col < PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[FILTERSIZE1_LAYER1 - 1][buffer_col] = buffer[FILTERSIZE1_LAYER1 - 1][PADDING_NUMBER_LAYER1];
                img_channel[FILTERSIZE1_LAYER1 - 1][buffer_col] = img_channel[FILTERSIZE1_LAYER1 - 1][PADDING_NUMBER_LAYER1];
            }
            //pad the last padding_number columns
            for (int buffer_col = INPUT_WIDTH + PADDING_NUMBER_LAYER1; buffer_col < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[FILTERSIZE1_LAYER1 - 1][buffer_col] = buffer[FILTERSIZE1_LAYER1 - 1][INPUT_WIDTH + PADDING_NUMBER_LAYER1 - 1];
                img_channel[FILTERSIZE1_LAYER1 - 1][buffer_col] = img_channel[FILTERSIZE1_LAYER1 - 1][INPUT_WIDTH + PADDING_NUMBER_LAYER1 - 1];
            }
        }
        //perform padding for the upper part of the input image
        if (row_idx <= PADDING_NUMBER_LAYER1 && row_idx > 0)
        {
            for (int buffer_col = 0; buffer_col < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[row_idx][buffer_col] = buffer[0][buffer_col];
                img_channel[row_idx][buffer_col] = img_channel[0][buffer_col];
            }
        }
        //perform padding for the bottom part of the input image
        if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER1)
        {
            for (int buffer_col = 0; buffer_col < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER1; buffer_col++)
            {
#pragma HLS pipeline
                buffer[FILTERSIZE1_LAYER1 - 1][buffer_col] = buffer[FILTERSIZE1_LAYER1 - 2][buffer_col];
                img_channel[FILTERSIZE1_LAYER1 - 1][buffer_col] = img_channel[FILTERSIZE1_LAYER1 - 2][buffer_col];
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER1 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER1; current_filter++)
            {
                for (int current_channel = 0; current_channel < CHANNELS_LAYER1; current_channel++)
                {
                    for (int filter_element = 0; filter_element < FILTERSIZE_LAYER1; filter_element++)
                    {
#pragma HLS pipeline
                        subfilter_layer[filter_element] = weights_layer1[current_channel][filter_element][current_filter];
                    }
                }
                CORRELATE(img_channel, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER1, correlate_img);
                for (int k = 0; k < INPUT_WIDTH; k++)
                {
                    out_layer[current_filter][k].data = correlate_img[k];
                    aux_sum = out_layer[current_filter][k].data + biases_layer1[current_filter];
                    out_layer[current_filter][k].data = MAX(aux_sum) + parametric_relu[0] * MIN(aux_sum);
                    out_layer[current_filter][k].keep = buffer[PADDING_NUMBER_LAYER1][PADDING_NUMBER_LAYER1 + k].keep;
                    out_layer[current_filter][k].user = buffer[PADDING_NUMBER_LAYER1][PADDING_NUMBER_LAYER1 + k].user;
                    out_layer[current_filter][k].last = buffer[PADDING_NUMBER_LAYER1][PADDING_NUMBER_LAYER1 + k].last;
                    out_layer[current_filter][k].id   = buffer[PADDING_NUMBER_LAYER1][PADDING_NUMBER_LAYER1 + k].id;
                    out_layer[current_filter][k].dest = buffer[PADDING_NUMBER_LAYER1][PADDING_NUMBER_LAYER1 + k].dest;
                    corr1_out<<out_layer[current_filter][k];
                }
            }
        }
    }
}
void layer2(stream_t2& corr1_out, stream_t2& corr2_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER2];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER2][CHANNELS_LAYER2][PAD_WIDTH_LAYER2];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER2; row_idx++)
    {
        my_data out_layer[FILTERS_LAYER2][INPUT_WIDTH];
        for (int i = 0; i < FILTERS_LAYER2; i++){
#pragma HLS unroll
           for (int j = 0; j < INPUT_WIDTH; j++){
#pragma HLS pipeline
               out_layer[i][j].data = 0;
           }
        }
        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER2; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER2 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER2 - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER2; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines and perform padding
            //to keep the size of the input image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER2 + 1 && row_idx < FILTERSIZE1_LAYER2 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER2; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    corr1_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER2];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER2; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER2 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER2 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER2 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER2; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    corr1_out>>img_channel[FILTERSIZE1_LAYER2 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[FILTERSIZE1_LAYER2 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER2 -1][current_input_channel][PADDING_NUMBER_LAYER2];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER2; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[FILTERSIZE1_LAYER2 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER2 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER2 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER2 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER2; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER2)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER2; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER2 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER2 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER2 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER2; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER2; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER2; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer2[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER2; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER2; index_input_element++)
                        {
#pragma HLS pipeline
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER2, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer2[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[1] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER2][0][PADDING_NUMBER_LAYER2 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER2][0][PADDING_NUMBER_LAYER2 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER2][0][PADDING_NUMBER_LAYER2 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER2][0][PADDING_NUMBER_LAYER2 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER2][0][PADDING_NUMBER_LAYER2 + index_input_element].dest;
                    corr2_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
void layer3(stream_t2& corr2_out, stream_t2& corr3_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER3];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER3][CHANNELS_LAYER3][PAD_WIDTH_LAYER3];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER3; row_idx++)
    {
        my_data out_layer[FILTERS_LAYER3][INPUT_WIDTH];
        for (int i = 0; i < FILTERS_LAYER3; i++){
           for (int j = 0; j < INPUT_WIDTH; j++){
               out_layer[i][j].data = 0;
           }
        }
        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER3; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER3 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER3 - 1; filter_line++)
                {
#pragma HLS pipeline
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER3; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines and perform padding to keep the size of the input
            //image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER3 + 1 && row_idx < FILTERSIZE1_LAYER3 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER3; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER3; index_input_element++)
                {
#pragma HLS pipeline
                    corr2_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER3; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER3];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER3; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER3; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER3 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER3 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER3 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER3; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER3; index_input_element++)
                {
                    corr2_out>>img_channel[FILTERSIZE1_LAYER3 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER3; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER3 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER3 -1][current_input_channel][PADDING_NUMBER_LAYER3];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER3; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER3; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER3 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER3 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER3 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER3 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER3; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER3)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER3; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER3 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER3 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER3 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER3; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER3; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER3; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer3[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER3; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER3; index_input_element++)
                        {
#pragma HLS pipeline
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER3, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer3[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[2] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER3][0][PADDING_NUMBER_LAYER3 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER3][0][PADDING_NUMBER_LAYER3 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER3][0][PADDING_NUMBER_LAYER3 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER3][0][PADDING_NUMBER_LAYER3 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER3][0][PADDING_NUMBER_LAYER3 + index_input_element].dest;
                    corr3_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
void layer4(stream_t2& corr3_out, stream_t2& corr4_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER4];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER4][CHANNELS_LAYER4][PAD_WIDTH_LAYER3];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER4; row_idx++)
    {
        my_data out_layer[FILTERS_LAYER4][INPUT_WIDTH];
        for (int i = 0; i < FILTERS_LAYER4; i++){
           for (int j = 0; j < INPUT_WIDTH; j++){
               out_layer[i][j].data = 0;
           }
        }
        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER4; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER4 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER4 - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER4; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines, normalize the values and perform padding
            //to keep the size of the input image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER4 + 1 && row_idx < FILTERSIZE1_LAYER4 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER4; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    corr3_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER4];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER4; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER4 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER4 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER4 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER4; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    corr3_out>>img_channel[FILTERSIZE1_LAYER4 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER4 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER4 -1][current_input_channel][PADDING_NUMBER_LAYER4];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER4; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER4 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER4 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER4 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER4 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER4; index_input_element++)
                {
#pragma HLS pipeline
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER4)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER4; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER4 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER4 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER4 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER4; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER4; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER4; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer4[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER4; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER4; index_input_element++)
                        {
#pragma HLS pipeline
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER4, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer4[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[3] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER4][0][PADDING_NUMBER_LAYER4 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER4][0][PADDING_NUMBER_LAYER4 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER4][0][PADDING_NUMBER_LAYER4 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER4][0][PADDING_NUMBER_LAYER4 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER4][0][PADDING_NUMBER_LAYER4 + index_input_element].dest;
                    corr4_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
void layer5(stream_t2& corr4_out, stream_t2& corr5_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER5];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER5][CHANNELS_LAYER5][PAD_WIDTH_LAYER5];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER5; row_idx++)
    {
        my_data out_layer[FILTERS_LAYER5][INPUT_WIDTH];
        for (int i = 0; i < FILTERS_LAYER5; i++){
           for (int j = 0; j < INPUT_WIDTH; j++){
               out_layer[i][j].data = 0;
           }
        }
        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER5; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER5 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER5 - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER5; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines, normalize the values and perform padding
            //to keep the size of the input image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER5 + 1 && row_idx < FILTERSIZE1_LAYER5 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER5; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    corr4_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER5];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER5; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER5 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER5 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER5 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER5; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    corr4_out>>img_channel[FILTERSIZE1_LAYER5 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER5 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER5 -1][current_input_channel][PADDING_NUMBER_LAYER5];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER5; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER5 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER5 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER5 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER5 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER5)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER5; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER5 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER5 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER5 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER5; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER5; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER5; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer5[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER5; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER5; index_input_element++)
                        {
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER5, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer5[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[4] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER5][0][PADDING_NUMBER_LAYER5 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER5][0][PADDING_NUMBER_LAYER5 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER5][0][PADDING_NUMBER_LAYER5 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER5][0][PADDING_NUMBER_LAYER5 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER5][0][PADDING_NUMBER_LAYER5 + index_input_element].dest;
                    corr5_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
void layer6(stream_t2& corr5_out, stream_t2& corr6_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER6];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER6][CHANNELS_LAYER6][PAD_WIDTH_LAYER6];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER6; row_idx++)
    {
    	my_data out_layer[FILTERS_LAYER6][INPUT_WIDTH];
    	//        for (int i = 0; i < FILTERS_LAYER6; i++){
    	//           for (int j = 0; j < INPUT_WIDTH; j++){
    	//               out_layer[i][j].data = 0;
    	//           }
    	//        }

    		#pragma HLS ARRAY_PARTITION variable=out_layer complete dim=1
    		for (int i = 0; i < FILTERS_LAYER6; i++) {
    			#pragma HLS UNROLL
    			for (int j = 0; j < INPUT_WIDTH; j++) {
    				#pragma HLS PIPELINE
    				out_layer[i][j].data = 0;
    			}
    		}

        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER6; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER6 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER6 - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER6; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }

            //read new lines, normalize the values and perform padding
            //to keep the size of the input image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER6 + 1 && row_idx < FILTERSIZE1_LAYER6 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER6; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    corr5_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER6];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER6; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER6 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER6 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER6 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER6; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    corr5_out>>img_channel[FILTERSIZE1_LAYER6 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER6 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER6 -1][current_input_channel][PADDING_NUMBER_LAYER6];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER6; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER6 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER6 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER6 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER6 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER6)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER6; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER6 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER6 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER6 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER6; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER6; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER6; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer6[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER6; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER6; index_input_element++)
                        {
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER6, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer6[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[5] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER6][0][PADDING_NUMBER_LAYER6 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER6][0][PADDING_NUMBER_LAYER6 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER6][0][PADDING_NUMBER_LAYER6 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER6][0][PADDING_NUMBER_LAYER6 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER6][0][PADDING_NUMBER_LAYER6 + index_input_element].dest;
                    corr6_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
void layer7(stream_t2& corr6_out, stream_t2& corr7_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> color)
{
    //int nr = 0;
    fixed_num subfilter_layer[FILTERSIZE_LAYER7];
    fixed_num correlate_img[INPUT_WIDTH];
    fixed_num aux_sum;
    my_data img_channel[FILTERSIZE1_LAYER7][CHANNELS_LAYER7][PAD_WIDTH_LAYER7];
    fixed_num channel_from_prev_out_layer[MAX_FILTERSIZE][PADDED_WIDTH];
    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER7; row_idx++)
    {
        my_data out_layer[FILTERS_LAYER7][INPUT_WIDTH];
        for (int i = 0; i < FILTERS_LAYER7; i++){
           for (int j = 0; j < INPUT_WIDTH; j++){
               out_layer[i][j].data = 0;
           }
        }
        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER7; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > FILTERSIZE1_LAYER7 - 1)
            {
                for (int filter_line = 0; filter_line < FILTERSIZE1_LAYER7 - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER7; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines, normalize the values and perform padding
            //to keep the size of the input image after correlation operation
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER7 + 1 && row_idx < FILTERSIZE1_LAYER7 - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER7; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    corr6_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER7];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER7; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER7 - 1];
                }
            }
            //in a nominal scenario, only the FILTERSIZE1 line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER7 + INPUT_HEIGHT && row_idx >= FILTERSIZE1_LAYER7 -1 && row_idx != 0)
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER7; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    corr6_out>>img_channel[FILTERSIZE1_LAYER7 -1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER7 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER7 -1][current_input_channel][PADDING_NUMBER_LAYER7];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER7; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER7 -1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER7 -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER7 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER7 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER7)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER7; index_input_element++)
                {
                    img_channel[FILTERSIZE1_LAYER7 - 1][current_input_channel][index_input_element] = img_channel[FILTERSIZE1_LAYER7 - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= FILTERSIZE1_LAYER7 - 1)
        {
            for (int current_filter = 0; current_filter < FILTERS_LAYER7; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER7; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER7; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer7[current_input_channel][subfilter_element][current_filter];
                    }
                    for (int input_line = 0; input_line < FILTERSIZE1_LAYER7; input_line++)
                    {
#pragma HLS pipeline
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER7; index_input_element++)
                        {
                            channel_from_prev_out_layer[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    CORRELATE(channel_from_prev_out_layer, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, FILTERSIZE_LAYER7, correlate_img);
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                    {
                        out_layer[current_filter][index_input_element].data = out_layer[current_filter][index_input_element].data + correlate_img[index_input_element];
                    }
                }
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH; index_input_element++)
                {
                    aux_sum = out_layer[current_filter][index_input_element].data + biases_layer7[current_filter];
                    out_layer[current_filter][index_input_element].data = MAX(aux_sum) + parametric_relu[6] * MIN(aux_sum);
                    out_layer[current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER7][0][PADDING_NUMBER_LAYER7 + index_input_element].keep;
                    out_layer[current_filter][index_input_element].user = img_channel[PADDING_NUMBER_LAYER7][0][PADDING_NUMBER_LAYER7 + index_input_element].user;
                    out_layer[current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER7][0][PADDING_NUMBER_LAYER7 + index_input_element].last;
                    out_layer[current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER7][0][PADDING_NUMBER_LAYER7 + index_input_element].id;
                    out_layer[current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER7][0][PADDING_NUMBER_LAYER7 + index_input_element].dest;

                    corr7_out<<out_layer[current_filter][index_input_element];
                }
            }
        }
    }
}
///----------------------------------------------------------------------------------------
///DECORRELATION LAYER
///----------------------------------------------------------------------------------------
void layer8(stream_t2& corr7_out, stream_t2& corr8_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> scale_factor, ap_uint<2> color)
{
    fixed_num subfilter_layer[FILTERSIZE_LAYER8];
    fixed_num decorrelate_img[NR_OF_LAST_OUTPUT_LINES][OUTPUT_WIDTH];
    fixed_num decorr_temp[NUM_DECOR][PAD_WIDTH_LAYER8];
    my_data img_channel[NUM_DECOR][CHANNELS_LAYER8][PAD_WIDTH_LAYER8];
    fixed_num expanded_channel[MAX_EXPANDED_HEIGHT][MAX_EXPANDED_WIDTH];

    for (int row_idx = 0; row_idx < INPUT_HEIGHT + 2*PADDING_NUMBER_LAYER8; row_idx++)
    {
    	my_data out_layer[NR_OF_LAST_OUTPUT_LINES][FILTERS_LAYER8][OUTPUT_WIDTH];
//    	        for (int k = 0; k < NR_OF_LAST_OUTPUT_LINES; k++){
//    	            for (int i = 0; i < FILTERS_LAYER8; i++){
//    	                for (int j = 0; j < OUTPUT_WIDTH; j++){
//    	                    out_layer[k][i][j].data = 0;
//    	                }
//    	            }
//    	        }

    	#pragma HLS ARRAY_PARTITION variable=out_layer complete dim=1
    	for (int k = 0; k < NR_OF_LAST_OUTPUT_LINES; k++) {
    		#pragma HLS UNROLL
    		for (int i = 0; i < FILTERS_LAYER8; i++) {
    			#pragma HLS UNROLL
    			for (int j = 0; j < OUTPUT_WIDTH; j++) {
    				#pragma HLS PIPELINE
    				out_layer[k][i][j].data = 0;
    			}
    		}
    	}

        for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER8; current_input_channel++)
        {
            //shift buffer lines to make space for the new line of every channel
            if (row_idx > NUM_DECOR - 1)//3
            {
                for (int filter_line = 0; filter_line < NUM_DECOR - 1; filter_line++)
                {
                    for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER8; index_input_element++)
                    {
                        img_channel[filter_line][current_input_channel][index_input_element] = img_channel[filter_line+1][current_input_channel][index_input_element];
                    }
                }
            }
            //read new lines and perform padding
            if (row_idx == 0 || (row_idx >= PADDING_NUMBER_LAYER8 + 1 && row_idx < NUM_DECOR - 1))
            {
                //read a new line from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER8; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    corr7_out>>img_channel[row_idx][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][PADDING_NUMBER_LAYER8];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER8; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[row_idx][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER8 - 1];
                }
            }
            //in a nominal scenario, only the NUM_DECOR line will be filled with new data
            if (row_idx < PADDING_NUMBER_LAYER8 + INPUT_HEIGHT && row_idx >= NUM_DECOR - 1 && row_idx != 0)
            {
                //read a new row from the current input channel
                for (int index_input_element = PADDING_NUMBER_LAYER8; index_input_element < INPUT_WIDTH + PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    corr7_out>>img_channel[NUM_DECOR - 1][current_input_channel][index_input_element];
                }
                //pad the first padding_number columns of the current input channel
                for (int index_input_element = 0; index_input_element < PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[NUM_DECOR -1][current_input_channel][index_input_element] = img_channel[NUM_DECOR -1][current_input_channel][PADDING_NUMBER_LAYER8];
                }
                //pad the last padding_number columns of the current input channel
                for (int index_input_element = INPUT_WIDTH + PADDING_NUMBER_LAYER8; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[NUM_DECOR -1][current_input_channel][index_input_element] = img_channel[NUM_DECOR -1][current_input_channel][INPUT_WIDTH + PADDING_NUMBER_LAYER8 - 1];
                }
            }
            //perform padding for the upper part of the current input channel
            if (row_idx <= PADDING_NUMBER_LAYER8 && row_idx > 0)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[row_idx][current_input_channel][index_input_element] = img_channel[0][current_input_channel][index_input_element];
                }
            }
            //perform padding for the bottom part of the current input channel
            if (row_idx >= INPUT_HEIGHT + PADDING_NUMBER_LAYER8)
            {
                for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2 * PADDING_NUMBER_LAYER8; index_input_element++)
                {
                    img_channel[NUM_DECOR - 1][current_input_channel][index_input_element] = img_channel[NUM_DECOR - 2][current_input_channel][index_input_element];
                }
            }
        }
        //perform correlation when is enough data
        if (row_idx >= NUM_DECOR - 1)
        {
            for (int current_filter = 0; current_filter < 1; current_filter++)
            {
                for (int current_input_channel = 0; current_input_channel < CHANNELS_LAYER8; current_input_channel++)
                {
                    for (int subfilter_element = 0; subfilter_element < FILTERSIZE_LAYER8; subfilter_element++)
                    {
                        subfilter_layer[subfilter_element] = weights_layer8[current_filter][subfilter_element][current_input_channel];
                    }
                    //extract NEEDED_NUMBER_OF_ROWS_PER_DECORR lines from the current channel
                    //to perform decorrelation for the current channel
                    for (int input_line = 0; input_line < NUM_DECOR; input_line++)
                    {
                        for (int index_input_element = 0; index_input_element < INPUT_WIDTH + 2*PADDING_NUMBER_LAYER8; index_input_element++)
                        {
                            decorr_temp[input_line][index_input_element] = img_channel[input_line][current_input_channel][index_input_element].data;
                        }
                    }
                    //perform deccorelation for the current channel
                    DECORRELATE(decorr_temp, INPUT_HEIGHT, INPUT_WIDTH, subfilter_layer, SCALE_FACT, expanded_channel);
                    //extract only useful data
                    if (row_idx < INPUT_HEIGHT +  2*PADDING_NUMBER_LAYER8 - 1)
                    {
                        for (int out_row_idx = 0; out_row_idx < SCALE_FACT; out_row_idx++)
                        {
                            for (int output_col = CROP_EDGE_LINES; output_col < OUTPUT_WIDTH + CROP_EDGE_LINES; output_col++)
                            {
                                    decorrelate_img[out_row_idx][output_col-CROP_EDGE_LINES] = expanded_channel[CROP_EDGE_LINES + out_row_idx][output_col];
                            }
                            for (int index_input_element = 0; index_input_element < OUTPUT_WIDTH; index_input_element++)
                            {
                                out_layer[out_row_idx][current_filter][index_input_element].data = out_layer[out_row_idx][current_filter][index_input_element].data + decorrelate_img[out_row_idx][index_input_element];
                            }
                        }
                    }
                    else
                    {
                        for (int out_row_idx = 0; out_row_idx < NR_OF_LAST_OUTPUT_LINES; out_row_idx++)
                        {
                            for (int output_col = CROP_EDGE_LINES; output_col < OUTPUT_WIDTH + CROP_EDGE_LINES; output_col++)
                            {
                                decorrelate_img[out_row_idx][output_col-CROP_EDGE_LINES] = expanded_channel[CROP_EDGE_LINES + out_row_idx][output_col];
                            }
                            for (int index_input_element = 0; index_input_element < OUTPUT_WIDTH; index_input_element++)
                            {
                                out_layer[out_row_idx][current_filter][index_input_element].data = out_layer[out_row_idx][current_filter][index_input_element].data + decorrelate_img[out_row_idx][index_input_element];
                            }
                        }
                    }
                }
                if (row_idx < INPUT_HEIGHT +  2*PADDING_NUMBER_LAYER8 - 1)
                {
                    for (int out_row_idx = 0; out_row_idx < SCALE_FACT; out_row_idx++)
                    {
                        for (int index_input_element = 0; index_input_element < OUTPUT_WIDTH; index_input_element++)
                        {
                            out_layer[out_row_idx][current_filter][index_input_element].data = (out_layer[out_row_idx][current_filter][index_input_element].data + biases_layer8);

                            out_layer[out_row_idx][current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER8 + out_row_idx][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].dest;
                            out_layer[out_row_idx][current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER8 + out_row_idx][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].id;
                            out_layer[out_row_idx][current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER8 + out_row_idx][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].keep;
                            out_layer[out_row_idx][current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER8 + out_row_idx][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].last;
                            if(index_input_element == 0 && row_idx == 4 && out_row_idx == 0)
                                out_layer[out_row_idx][current_filter][index_input_element].user = 1;
                            else
                                out_layer[out_row_idx][current_filter][index_input_element].user = 0;
                            corr8_out<<out_layer[out_row_idx][current_filter][index_input_element];
                        }
                    }
                }
                else
                {
                    for (int out_row_idx = 0; out_row_idx < NR_OF_LAST_OUTPUT_LINES; out_row_idx++)
                    {
                        for (int index_input_element = 0; index_input_element < OUTPUT_WIDTH; index_input_element++)
                        {
                            out_layer[out_row_idx][current_filter][index_input_element].data = (out_layer[out_row_idx][current_filter][index_input_element].data + biases_layer8);

                            out_layer[out_row_idx][current_filter][index_input_element].dest = img_channel[PADDING_NUMBER_LAYER8][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].dest;
                            out_layer[out_row_idx][current_filter][index_input_element].id   = img_channel[PADDING_NUMBER_LAYER8][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].id;
                            out_layer[out_row_idx][current_filter][index_input_element].keep = img_channel[PADDING_NUMBER_LAYER8][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].keep;
                            out_layer[out_row_idx][current_filter][index_input_element].last = img_channel[PADDING_NUMBER_LAYER8][0][PADDING_NUMBER_LAYER8 + (index_input_element%INPUT_WIDTH)].last;
                            out_layer[out_row_idx][current_filter][index_input_element].user = 0;
                            corr8_out<<out_layer[out_row_idx][current_filter][index_input_element];
                        }
                    }
                }
            }
        }
    }
}
///----------------------------------------------------------------------------------------
///TOP FUNCTION
///----------------------------------------------------------------------------------------
void FSRCNN(stream_t& stream_in, stream_t& stream_out, ap_uint<8> height, ap_uint<8> width, ap_uint<2> scale_factor)
{
    //Implements all ports as an AXI4-Lite interface.
    //The HLS tool produces an associated set of C driver files
    //during the Export RTL process. By default, the HLS tool
    //groups all function arguments specified as an AXI4-Lite
    //(s_axilite) interface into a single AXI4-Lite port
#pragma HLS INTERFACE s_axilite register port=height bundle=scalar_parameters
#pragma HLS INTERFACE s_axilite register port=width bundle=scalar_parameters
#pragma HLS INTERFACE s_axilite register port=scale_factor bundle=scalar_parameters
    //No block-level I/O protocol. Using the ap_ctrl_none mode might
    //prevent the design from being verified using the C/RTL co-simulation feature.
#pragma HLS INTERFACE ap_ctrl_none port=return
    //Implements all ports as an AXI4-Stream interface.
#pragma HLS INTERFACE axis register both port = stream_in
#pragma HLS INTERFACE axis register both port = stream_out

    stream_t2 corr1_out("corr1_out");
    stream_t2 corr2_out("corr2_out");
    stream_t2 corr3_out("corr3_out");
    stream_t2 corr4_out("corr4_out");
    stream_t2 corr5_out("corr5_out");
    stream_t2 corr6_out("corr6_out");
    stream_t2 corr7_out("corr7_out");
    stream_t2 corr8_out("corr8_out");
    my_data pix_in;
    package_t pix_out;

    float data_util;
    int color = 0;
#pragma HLS dataflow
    layer1(stream_in, corr1_out, height, width, color);
    layer2(corr1_out, corr2_out, height, width, color);
    layer3(corr2_out, corr3_out, height, width, color);
    layer4(corr3_out, corr4_out, height, width, color);
    layer5(corr4_out, corr5_out, height, width, color);
    layer6(corr5_out, corr6_out, height, width, color);
    layer7(corr6_out, corr7_out, height, width, color);
    layer8(corr7_out, corr8_out, height, width, scale_factor, color);
    for (int i = 0; i < OUTPUT_HEIGHT*OUTPUT_WIDTH; i++)
    {
#pragma HLS pipeline
        corr8_out>>pix_in;
        data_util = (pix_in.data*UNNORMALIZE_CONSTANT);
        //repair overflow
        if(data_util > 255)
            data_util = 255;
        if(data_util < 0)
            data_util = 0;
        pix_out.data = (int)data_util;
        pix_out.dest = pix_in.dest;
        pix_out.id   = pix_in.id;
        pix_out.keep = pix_in.keep;
        pix_out.last = pix_in.last;
        pix_out.strb = 0;
        pix_out.user = pix_in.user;
        stream_out<<pix_out;
    }
}
