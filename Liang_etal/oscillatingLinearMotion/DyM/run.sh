#!/bin/sh
cd ${0%/*} || exit 1    # run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

#cp -r ../simpleCoarseAmbient/constant/polyMesh/* constant/polyMesh/
#transformPoints -translate '(1 1 2)'
runApplication extrudeMesh
runApplication createPatch -overwrite
transformPoints -translate '(0 0 -0.2)'
transformPoints -scale '(2.19298245614 2.19298245614 2)'
#paraFoam
cp -r 0.org 0
moveMesh
# ----------------------------------------------------------------- end-of-file
