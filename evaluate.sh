BASE_DIR=output/overfeat_resnet_rezoom_bankcard_2017_04_25_22.43
python evaluate.py --weights $BASE_DIR/save.ckpt-4000 --test_boxes data/bankcard/boxes_test.json
#BASE_DIR=data/overfeat_rezoom
#python evaluate.py --weights $BASE_DIR/save.ckpt-150000v2 --test_boxes data/bankcard/boxes_test.json
