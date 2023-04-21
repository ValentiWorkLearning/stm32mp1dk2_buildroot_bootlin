git clone https://github.com/ValentiWorkLearning/stm32mp1dk2_buildroot_bootlin.git
cd stm32mp1dk2_buildroot_bootlin
git submodule update --init
cd buildroot 
git checkout st/2022.02.7
cd ../stm32mp1dk2_buildroot_bootlin

export REPO_ROOT=${PWD}
make BR2_EXTERNAL=${REPO_ROOT}/buildroot-external-st -C buildroot O=/test_build st_stm32mp157c_dk2_demo_defconfig
cd /test_build
make