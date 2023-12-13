#define MAX_VARIABLES 3
#define MAX_DATA_POINTS 1000
#define MAX_VARIABLE_NAME_LENGTH 50
#define MAX_COMMAND_LENGTH 100

typedef struct calculationInfo_t{
    double residuals[MAX_VARIABLES * MAX_DATA_POINTS];
    int sumSquaredX1;
    int sumSquaredX2;
    int sumX1X2;
    int sumX1Y;
    int sumX2Y;
    int sumX1;
    int sumX2;
    int sumY;
} calculationInfo_t;

typedef struct regressionInfo_t{
    double beta_0;
    double beta_1;
    double beta_2;
} regressionInfo_t;

typedef struct data_t{
    int data[MAX_VARIABLES * MAX_DATA_POINTS];
    int data_cpy[MAX_VARIABLES * MAX_DATA_POINTS];
    char variableNames[MAX_VARIABLES][256];
    int numVars;
    int numObservations;
    
    double predictions[MAX_VARIABLES * MAX_DATA_POINTS];
} data_t;