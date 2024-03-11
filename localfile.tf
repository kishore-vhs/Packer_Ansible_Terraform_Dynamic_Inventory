resource "local_file" "inventory-file" {
    content = templatefile("details.tpl",
        {
            testserver01    =   aws_instance.srv-1.0.public_ip
            testserver02    =   aws_instance.srv-2.1.public_ip
            testserver03    =   aws_instance.srv-3.2.public_ip
            pvtserver01     =   aws_instance.srv-1.0.private_ip
            pvtserver02     =   aws_instance.srv-2.1.private_ip
            pvtserver03     =   aws_instance.srv-3.2.private_ip
        }
    )
    # Below is inventory file.
    filename = "inventory_file"
}