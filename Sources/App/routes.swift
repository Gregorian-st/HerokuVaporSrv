import Vapor

func routes(_ app: Application) throws {
    let authController = AuthController()
    app.post("register", use: authController.register)
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    app.post("changeUserData", use: authController.changeUserData)
    
    let productController = ProductController()
    app.post("getGoodById", use: productController.getGoodById)
    app.post("catalogData", use: productController.catalogData)
}
