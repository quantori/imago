# Install OpenCV library

1. [Follow official instructions](https://docs.opencv.org/2.4/doc/tutorials/introduction/linux_install/linux_install.html)
2. Create opencv2 shortcut:
   ```
   sudo ln -s /usr/local/include/opencv4/opencv2 /usr/local/include/opencv2
   ```

# Install FreeType library
```
sudo apt-get install libfreetype6-dev
```

# Building

1. Right click on "CmakeLists.txt" (in main directory of project) and "ReloadCmakeProject"
2. Enter in terminal:
   ```
   cmake .
   ```
3. Repeat step 1
4. Delete "CMakeCache.txt" file of main directory of project
5. Repeat step 2
6. Build entire project 