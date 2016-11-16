resource "aws_iam_role" "s3-admin-access" {
    name = "s3-admin-access"
}

resource "aws_iam_policy_attachment" "s3-admin-access-attach" {
    name = "AmazonS3FullAccess"
    roles = ["${aws_iam_role.s3-admin-access.name}"]
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}