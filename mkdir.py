import os
import sys
indir = sys.argv[1]
outdir = sys.argv[2]
labels = os.listdir(indir)
for label in labels:
    labeldir = os.path.join(indir,label)
    outlabeldir = os.path.join(outdir,label)
    if(not os.path.exists(outlabeldir)):
        os.mkdir(outlabeldir)
    videos = os.listdir(labeldir)
    for video in videos:
        videodir = os.path.join(labeldir,video)
        outvideodir = os.path.join(outlabeldir,video)
        if(not os.path.exists(outvideodir)):
            os.mkdir(outvideodir)
'''
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
'''
