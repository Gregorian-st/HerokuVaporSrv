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
    
    let reviewController = ReviewController()
    app.post("getProductReviews", use: reviewController.getProductReviews)
    app.post("addProductReview", use: reviewController.addProductReview)
    app.post("removeProductReview", use: reviewController.removeProductReview)
    
    let basketController = BasketController()
    app.post("addToBasket", use: basketController.addToBasket)
    app.post("deleteFromBasket", use: basketController.deleteFromBasket)
    app.post("getBasket", use: basketController.getBasket)
    app.post("payBasket", use: basketController.payBasket)
}
