#include "libds/LibDS.h"

int main() {

    DS_Init();

    DS_Protocol frc2019 = DS_GetProtocolFRC_2019();
    DS_ConfigureProtocol(&frc2019);

    return 0;

}
