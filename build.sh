SECONDS=0 # builtin bash timer

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# ===== AnyKernel3 =====
AK3_REPO="https://github.com/skye-tachyon/AnyKernel3"
AK3_BRANCH="$DEVICE"
AK3_DIR="$(pwd)/android/AnyKernel3"
rm -rf AnyKernel3
echo "[*] Cloning AnyKernel3 for $DEVICE"
git clone -q -b "$AK3_BRANCH" "$AK3_REPO" AnyKernel3 || exit 1

echo -e "Preparing zip...\n"

cd AnyKernel3

zip -r9 "../$ZIPNAME" * -x .git README.md *placeholder
cd ..

echo -e "\n${GREEN}Completed in $((SECONDS / 60)) minute(s) and $((SECONDS % 60)) second(s)!${NC}"
echo -e "${GREEN}Zip: $ZIPNAME${NC}"
