create table `product_info`(
	`product_id` varchar(32) not null,
	`product_name` varchar(64) not null comment '商品名称',
	`product_price` decimal(8,2) not null comment '单价',
	`product_stock` int not null comment '库存',
	`product_description` varchar(64) comment '描述',
	`product_icon` varchar(512) comment '小图',
	`category_type` int not null comment '类目编号',
	`create_time` timestamp not null default current_timestamp comment '创建时间',
	`update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间'
	primary key (`product_id`)
) comment '商品表';

create table `product_category` (
	`category_id` int not null auto_increment,
	`category_name` varchar(64) not null comment '类目名字',
	`category_type` int not null comment '类目编号',
	`create_time` timestamp not null default current_timestamp comment '创建时间',
	`update_time` timestamp not null default current_timestamp on update current_timestamp comment '更新时间'
	primary key (`category_id`),
	unique key `uqe_category_type` (`category_type`)
) comment '类目表';