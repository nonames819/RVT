import os
import numpy as np

# 定义两个文件夹路径
folder1 = '/data/chd_data/rvt/replay/replay_train_down/open_drawer'
folder2 = '/data/chd_data/rvt/replay/replay_train/open_drawer'

# file1 = '/home/xiesicheng/chd/RVT/rvt/replay/replay_train_down/open_drawer/1037.replay'
# file2 = '/home/xiesicheng/chd/RVT/rvt/replay/replay_train/open_drawer/1037.replay'
# data1 = np.load(file1, allow_pickle=True)
# data2 = np.load(file2, allow_pickle=True)

# for key1, key2 in zip(data1.keys(), data2.keys()):
#     print(key1, key2)
#     print("data1", data1[key1])
#     print("data2",data2[key2])

# 获取两个文件夹中所有 .replay 文件的文件名
files1 = {f for f in os.listdir(folder1) if f.endswith('.replay')}
files2 = {f for f in os.listdir(folder2) if f.endswith('.replay')}

# 找到两个文件夹中同名的 .replay 文件
common_files = files1.intersection(files2)
print(len(common_files))

# 比较同名文件的内容
diff_num = 0
for filename in common_files:
    file1_path = os.path.join(folder1, filename)
    file2_path = os.path.join(folder2, filename)
    
    # 读取文件
    try:
        data1 = np.load(file1_path, allow_pickle=True)
        data2 = np.load(file2_path, allow_pickle=True)
        
        # 比较文件内容
        if np.allclose(data1, data2):
            print(f"Files {filename} are identical.")
        else:
            # print(f"Files {filename} are different.")
            diff_num += 1
    except Exception as e:
        print(f"Error loading or comparing {filename}: {e}")

print(diff_num)
