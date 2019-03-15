# glype

## Usage

+ 自己打包
    - clone this repository
    - cd glype && docker build -t glype .
    - docker run -p 80:80 glype
+ 使用已打包的镜像
    - docker run -d --name glype -p 80:80 sadeye/glype


### 后台账户密码默认是admin/admin
1. 修改密码: cd glype/includes
2. 打开 settings.php 找到最后一行 如下: 
 `$adminDetails['admin'] = '21232f297a57a5a743894a0e4a801fc3';`
 `21232f297a57a5a743894a0e4a801fc3是密码的md5值`
3. 如果想修改密码，请把你要改的密码对应的md5值填写在这里保存即可