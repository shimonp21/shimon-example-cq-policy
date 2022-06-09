policy "shimon custom policy" {
		title = "Shimon Custom Policy"

				configuration {
						provider "aws" {
								version = ">= 0.10.0"
						}
				}

		check "old-stopped-ec2-instances" {
				title = "Stopped EC2 instances should be removed after a specified time period"
						query = "SELECT 'aaa' AS bbb"
						expect_output = false
		}
}
