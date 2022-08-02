resource "aws_lambda_function" "example-lambda" {
  filename         = "lambda_function.zip"
  function_name    = "test_lambda"
  role             = "${aws_iam_role.iam_for_lambda_tf.arn}"
  handler          = "index.handler"
  source_code_hash = "${data.archive_file.lambda_zip.output_base64sha256}"
  runtime          = "nodejs6.10"
  layers = "arn:aws:lambda:eu-central-1:017000801446:layer:AWSLambdaPowertoolsPython:18"
}
