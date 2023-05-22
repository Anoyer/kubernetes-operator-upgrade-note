
# 初始化项目
mkdir MyOperatorProjects
cd MyOperatorProjects
kubebuilder init --domain=danielhu.cn --repo=github.com/daniel-hutao/application-operator --owner Daniel.Hu

# 添加API
kubebuilder create api --group apps --version v1 --kind Application