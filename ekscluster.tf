resource "aws_eks_cluster" "eks_cluster" {
  name     = "terraformEKScluster"
  role_arn =  "${aws_iam_role.iam-role-eks-cluster.arn}"
  version  = "1.20"

  vpc_config {             # Configure EKS with vpc and network settings 
   security_group_ids = ["${aws_security_group.eks-cluster.id}"]
   subnet_ids         = ["subnet-0c2358df7e1c2ef65", "subnet-00fac17ca6492ef1d"] 
    }

depends_on = [
    "aws_iam_role_policy_attachment.eks-cluster-AmazonEKSClusterPolicy",
    "aws_iam_role_policy_attachment.eks-cluster-AmazonEKSServicePolicy",
   
   ]
}
