#include "jtuner.h"
#include <jdtvcomm.h>
int main()
{
	J_Handle	fd = 0;
	int ret = 0;
	J_TuningParam Param;
	J_TunerLockStatus LockStatus;
	Param.Freq = 650000;
	Param.Qam = 2;
	Param.Symb = 6875;
	fd = J_TunerOpen(0);
	if(ret < 0)
		printf("J_TunerOpen failded\n");
	ret = J_TunerTune(fd,&Param,&LockStatus);
	if(ret == 0)
		{
			if(LockStatus ==TUNER_LOCK_STATUS_LOCKED)
				;//printf("lock sucess\n");
		}
		else
			;//printf("lock failed\n");
		
		
	J_TunerClose(fd);
	return 0;
}
