# Install SAM
cd sam; pip install -e .
cd -

# Install Grounding-Dino
# pip install -e git+https://github.com/IDEA-Research/GroundingDINO.git@main#egg=GroundingDINO
git clone https://github.com/IDEA-Research/GroundingDINO.git
cd GroundingDINO/
pip install -e .
cd -
cp -r GroundingDINO/groundingdino .

# Install other lib
pip install numpy opencv-python pycocotools matplotlib Pillow scikit-image
pip install gradio==3.39.0 zip gdown ffmpeg==1.4
pip install timm==0.4.5
pip install wget
pip install spatial-correlation-sampler

# # Install Pytorch Correlation
# git clone https://github.com/ClementPinard/Pytorch-Correlation-extension.git
# cd Pytorch-Correlation-extension
# python setup.py install
# cd -
# cp -r Pytorch-Correlation-extension/Correlation_Module/spatial_correlation_sampler .

# Install AST
git clone https://github.com/YuanGongND/ast.git ast_master
cp ./prepare.py ./ast_master

mkdir debug
mkdir debug/seg_result
mkdir debug/aot_resullt
