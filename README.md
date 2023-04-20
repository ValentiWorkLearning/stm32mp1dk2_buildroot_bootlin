```shell
export REPO_ROOT=${PWD}
make BR2_EXTERNAL=${REPO_ROOT}/buildroot-external-st -C buildroot O=${REPO_ROOT}/image_build/ st_stm32mp157c_dk2_demo_defconfig
```
