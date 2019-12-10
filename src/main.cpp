#include "libds/LibDS.h"

int main() {

    DS_Init();
    DS_ConfigureProtocol (DS_GetProtocolFRC_2018());

    return 0;

}
