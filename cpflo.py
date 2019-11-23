import os
import sys
from tqdm import tqdm
indir = sys.argv[1]
outdir = sys.argv[2]
mode = sys.argv[3]
labels = os.listdir(indir)
for label in tqdm(labels):
    labeldir = os.path.join(indir,label)
    videos = os.listdir(labeldir)
    for video in videos:
        videodir = os.path.join(labeldir,video)
        files = os.listdir(videodir)
        num = len([ fname for fname in os.listdir(videodir) if fname.endswith('.flo')])
        print(num)
        for f in files:
            if (mode == 'jpg' and f.endswith(".jpg")):
                #print(os.path.join(videodir,f))
                outvideodir = os.path.join(outdir,label,video)
                cmd = 'cp "%s" "%s"'%(os.path.join(videodir,f),\
                      os.path.join(outvideodir,f.split('_')[-1].split('.')[0]+'.jpg'))
                print(cmd)
                os.system(cmd)
            if (mode == 'flo'):
                if(f.endswith(".flo") and int(f.split('_')[-1].split('.')[0]) != num):
                    print(int(f.split('_')[-1].split('.')[0]),num)
                    #print(os.path.join(videodir,f))
                    outvideodir = os.path.join(outdir,label,video)
                    cmd = 'cp "%s" "%s"'%(os.path.join(videodir,f), \
                          os.path.join(outvideodir,f.split('_')[-1].split('.')[0]+'_flow256crop.flo'))
                    print(cmd)
                    os.system(cmd)
