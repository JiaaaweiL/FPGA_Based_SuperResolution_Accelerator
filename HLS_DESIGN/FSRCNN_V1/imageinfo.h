#define MAX_OUT_CHANNELS           56
#define INPUT_HEIGHT               64                  //** should be the input image height
#define INPUT_WIDTH                64                  //** should be the input image width
#define OUTPUT_HEIGHT              128                 //** should be the input image height multiplied by scale_factor
#define OUTPUT_WIDTH               128                 //** should be the input image width multiplied by scale_factor
#define UNNORMALIZE_CONSTANT       255
#define SCALE_FACT                 2
#define NR_OF_LAST_OUTPUT_LINES    6
#define MAX_EXPANDED_HEIGHT        17
#define MAX_EXPANDED_WIDTH         139                 //** should be the (input image width + 2*PADDING_NUMBER_LAYER8)*scale_factor + CROP_EDGE_LINES
#define CROP_EDGE_LINES            7
#define PADDED_HEIGHT              68                  //** should be the input image height + 2*PADDING_NUMBER_LAYER1
#define PADDED_WIDTH               68                  //** should be the input image width  + 2*PADDING_NUMBER_LAYER1
