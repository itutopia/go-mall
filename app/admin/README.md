Go-Mall商城项目


技术框架选型

| 框架爱       | 说明       |
|-----------|----------|
| gin       | 轻量级web框架 |
| gorm      | orm框架    | 
 | gin-Cors  |          |
 | godotenv  |          | 

项目目录结构

```
    ├── app
        ├── admin         
            ├── api         (controller-API层) 
            ├── global          (全局对象)      
            ├── initialize      (初始化)   
            ├── middleware      (中间件配置层)
            ├── model           (模型层)                    
            │   ├── request     (入参结构体)                        
            │   └── response    (出参结构体)   
            ├── repository      (持久层)
            ├── resource        (静态资源文件夹)                        
            │   ├── excel       (excel导入导出默认路径)                        
            │   ├── page        (表单生成器)                        
            │   └── template    (模板)  
            ├── router          (路由层)   
            ├── scheduler       (定时任务)  
            ├── service         (service层)                                    
            └── utils           (工具包)                    
                ├── timer       (定时器接口封装)                        
                └── upload      (oss接口封装)                                     
        ├── docs
```
