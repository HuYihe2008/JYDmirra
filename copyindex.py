# srcfile 需要复制、移动的文件   
# dstpath 目的地址

#引用部分
from glob import glob
import os
import shutil

#后端函数部分(不要动哦)
def mycopyfile(srcfile,dstpath):                       # 复制函数
    if not os.path.isfile(srcfile):
        print ("%s not exist!"%(srcfile))
    else:
        fpath,fname=os.path.split(srcfile)             # 分离文件名和路径
        if not os.path.exists(dstpath):
            os.makedirs(dstpath)                       # 创建路径
        shutil.copy(srcfile, dstpath + fname)          # 复制文件
        print ("copy %s -> %s"%(srcfile, dstpath + fname))


# 复制文件路径 
src_dir = "./dist/"                             

#获取文件|格式为"目录"+"文件名称"
_name = "index.html"

#执行获取文件
src_file_list = glob(src_dir + '/' + _name)

#执行文件目录遍历
_path = "./Users Config/"
for root,dirs,files in os.walk(_path):
        print(os.path.join(root))
        #执行复制
        for srcfile in src_file_list:
            mycopyfile(srcfile, (root + '/')) 

