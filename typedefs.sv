package typedefs;
  typedef enum logic [1:0] {IDLE, LOAD, PROCESSING, DONE} simon_state_t;
  typedef enum logic [1:0] {BUF_IDLE, READING, BUF_DONE} read_state_t;
  typedef enum logic [3:0] {I2C_IDLE, START_1, START_2, HOLD,DATA_1, DATA_2, DATA_3, DATA_4,END_DATA, REPEAT_START, STOP_1, STOP_2} i2c_state_t;
  typedef enum logic [1:0] {TRNG_IDLE, TRNG_RUN, TRNG_DONE} trng_state_t;
  typedef enum logic [2:0] {INF_IDLE, INF_START, INF_FEED, INF_WAIT_CNN, INF_ENCRYPT} inf_state_t;
endpackage
