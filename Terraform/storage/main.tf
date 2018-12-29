#-------storage/main.tf

# create a random s3 bucket name

resource "random_id" "tf_bucket_id" {
	byte_length = 2
}

# create a bucket

resource "aws_s3-bucket" "sam11" {
	bucket = "${var.project_name}-${random_id.tf_bucket_id.dec}"
	acl = "private"
	force_destroy = true

	tags {

	Name = "my_bucket"
	}

}