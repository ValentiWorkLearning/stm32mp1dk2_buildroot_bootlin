## Build steps:
* Copy Dockerfile from the repo to a local directory
* Build docker container:
```shell
docker build -t mp157_build .
```
* Launch the container:
```shell
docker run -t -i -v $PWD/build_volume:/build_volume mp157_build /bin/bash
```

## Inside container:
```shell
git clone https://github.com/ValentiWorkLearning/stm32mp1dk2_buildroot_bootlin.git
cd stm32mp1dk2_buildroot_bootlin
git submodule update --init
cd buildroot 
git checkout st/2022.02.7
git cherry-pick f986b265511e6f4748595c8b7ea83f1f616ddd64
cd ../stm32mp1dk2_buildroot_bootlin

export REPO_ROOT=${PWD}
make BR2_EXTERNAL=${REPO_ROOT}/buildroot-external-st -C buildroot O=/test_build st_stm32mp157c_dk2_demo_defconfig
cd /test_build
make
cp /test_build/images/sdcard.img /build_volume/
```
