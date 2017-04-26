BASE_DIR=output/overfeat_resnet_rezoom_bankcard_2017_04_25_22.43

rm checkpoint
mv resnet_graph.pb $BASE_DIR/
mv bankcard.ckpt* $BASE_DIR/

python freeze_graph.py --input_graph $BASE_DIR/resnet_graph.pb --input_binary True --input_checkpoint $BASE_DIR/bankcard.ckpt-0 --output_graph $BASE_DIR/bankcard.pb --output_node_names add,decoder/concat_1,Reshape_2
