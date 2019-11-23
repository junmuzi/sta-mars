from torch import nn
import pdb

class falayer(nn.Module):
    def __init__(self, inplanes, filter_size = 28):
        super(falayer, self).__init__();
        self.conv3d_1_fa = nn.Conv3d(inplanes, 1, kernel_size=(1, filter_size, filter_size));
        #self.deconv3d_fa = nn.ConvTranspose3d(1, 1, kernel_size=(3, 1, 1), stride=(2, 1, 1));
        self.deconv3d_fa = nn.ConvTranspose3d(1, 1, kernel_size=(3, 1, 1), stride=(1, 1, 1));
        self.bn1_fa = nn.BatchNorm3d(1);
        self.relu_fa = nn.ReLU(inplace=True);
        #self.conv3d_2_fa = nn.Conv3d(1, inplanes, kernel_size=(3, 1, 1), stride = (2, 1, 1));
        self.conv3d_2_fa = nn.Conv3d(1, inplanes, kernel_size=(3, 1, 1), stride = (1, 1, 1));
        self.bn2_fa = nn.BatchNorm3d(inplanes);
        self.sigmoid_fa = nn.Sigmoid();
	
    def forward(self, x):
        b, c, l, _, _ = x.size();
        #pdb.set_trace()
        y = self.conv3d_1_fa(x).view(b, 1, l, 1, 1);
        y = self.deconv3d_fa(y).view(b, 1, (l - 1) * 1 + 3, 1, 1);
        y = self.bn1_fa(y);
        y = self.relu_fa(y);
        y = self.conv3d_2_fa(y).view(b, c, l, 1, 1);
        y = self.bn2_fa(y);
        y = self.sigmoid_fa(y).view(b, c, l, 1, 1);
#        for i in range(b):
#            for k in range(l):
#                w = 0.0;
#                #pdb.set_trace();
#                #for j in range(c):
#                #    w += y[i][j][k];
#                #print('Avg w[%d batch][%d th frame] is %f,' %(i, k, (w / c)));
#                print('Avg w[%d batch][%d th frame] is %f,' %(i, k, (y[i][100][k])));
        return x * y;
