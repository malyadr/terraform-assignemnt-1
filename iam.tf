resource "aws_iam_role" "iam-role-eks-cluster" {
  name = "terraformEKScluster"
  assume_role_policy = file("iampolicy.json")
}

resource "aws_iam_role" "eks_nodes" {
  name = "eks-node-group"
  assume_role_policy = file("iam2policy.json")
}