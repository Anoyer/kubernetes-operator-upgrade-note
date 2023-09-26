
# 初始化项目
mkdir MyOperatorProjects
cd MyOperatorProjects
kubebuilder init --domain=danielhu.cn --repo=github.com/daniel-hutao/application-operator --owner Daniel.Hu

# 添加API
kubebuilder create api --group apps --version v1 --kind Application

# 生成ClusterRole等配置
make manifests

# CRD部署
make install

# 构建镜像
make docker-build IMG=application-operator:v0.0.1

# 推到kind环境
kind load docker-image application-operator:v0.0.1 --name dev

# 部署控制器
make deploy IMG=application-operator:v0.0.1

# 卸载controller 需要现在卸载controller 再卸载crd
make undeploy

# 卸载crd
make uninstall