#creates group s3 admin and attaches AmazonS3FullAccess Policy

resource "aws_iam_group" "s3admin" {
    name = "s3admin"
}

resource "aws_iam_policy_attachment" "s3admin-attach" {
    name = "AmazonS3FullAccess"
    groups = ["${aws_iam_group.s3admin.name}"]
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}


