package model

import (
	"gorm.io/gorm"
	"time"
)

type UmsMember struct {
	gorm.Model
	Username              string    `json:"username" gorm:"size:64;comment:用户名"`
	Password              string    `json:"-" gorm:"size:128;comment:密码"`
	NickName              string    `json:"nickName" gorm:"size:128;comment:昵称"`
	Phone                 string    `json:"phone" gorm:"size:11;comment:手机号码"`
	MemberLevelId         int8      `json:"member_level_id" gorm:"size:11;comment:用户等级"`
	Avatar                string    `json:"avatar" gorm:"size:255;comment:头像"`
	Gender                int8      `json:"gender" gorm:"size:8;comment:性别：0:未知；1:男；2:女'"`
	Birthday              time.Time `json:"birthday" gorm:"comment:生日"`
	City                  string    `json:"city" gorm:"comment:所在城市"`
	Job                   string    `json:"job" gorm:"comment:职业"`
	PersonalizedSignature string    `json:"personalized_signature" gorm:"comment:个性签名"`
	SourceType            int       `json:"source_type" gorm:"comment:用户来源"`
	Integration           int       `json:"integration" gorm:"comment:用户来源"`
	HistoryIntegration    int       `json:"history_integration" gorm:"comment:用户来源"`
	Growth                int       `json:"growth" gorm:"comment:用户来源"`
	Status                int       `json:"status" gorm:"comment:帐号启用状态:0:禁用；1:启用',"`
}
