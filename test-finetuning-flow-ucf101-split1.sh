# For Flow stream:
PTHsize=$((383553046))
for ((i="$1"; i<400;))
do
PTH="results-ucf101-flow-split1/UCF101/PreKin_UCF101_1_Flow_train_batch32_sample112_clip64_nestFalse_damp0.9_weight_decay1e-05_manualseed1_modelresnext101_ftbeginidx4_varLR$i.pth"
if [ ! -f $PTH ];then
    echo "$i not exist, wait..."
    sleep 30
else
    filesize=`ls -l $PTH | awk '{ print $5 }'`
    if [ $(($PTHsize+50)) -gt $filesize ];then
        echo "$i testing..."
	CUDA_VISIBLE_DEVICES=$2 python test_single_stream.py --batch_size 64 --n_classes 101 --model resnext --model_depth 101 \
	--log 0 --dataset UCF101 --modality Flow --sample_duration 64 --split 1  \
	--resume_path1 $PTH \
	--frame_dir "dataset/UCF101_MARS" \
	--annotation_path "dataset/UCF101_labels" \
	--result_path "results/" >>test-finetuning-flow-ucf101-split1_from-$1.log
        
        i=$(($i+1))
    else
        echo "$i in generating, wait..."
	sleep 10
    fi
fi
done
