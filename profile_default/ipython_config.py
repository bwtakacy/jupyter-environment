c = get_config()

c.InteractiveShellApp.extensions = [
    # Pandas-TD のマジック関数
    'pandas_td.ipython',
]

c.InteractiveShellApp.exec_lines = [
    # 画像の埋め込みを有効にする
    '%matplotlib inline',
    # よく使うモジュールをロードする
    'import numpy as np',
    'import pandas as pd',
    'import pandas_td as td',
]
