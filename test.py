import numpy as np

# 加载 .replay 文件（假设是 NumPy 格式）
replay_buffer = np.load('/home/xiesicheng/chd/RVT/rvt/replay/replay_train_down/close_jar/0.replay', allow_pickle=True)
for key, value in replay_buffer.items():
    print(key)
    if value.shape 