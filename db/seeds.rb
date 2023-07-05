user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")



user1_apartments = [{
    street:'2123 Head St'
    unit:'848'
    city:'Plantee'
    state:'Idaho'
    square_footage:'1500'
    price:'1930'
    bedrooms: 3
    bathrooms:2.5
    pets:'yes'
    image:'https://images.unsplash.com/photo-1628592102751-ba83b0314276?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2794&q=80'


}
{
    street:'2122'
    unit:'83'
    city:'VitaminC'
    state:'California'
    square_footage:'2300'
    price:'3000'
    bedrooms: 4
    bathrooms:4
    pets:'yes'
    image:'https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'

}]

user2_apartments = [{
    street:'948 F ave'
    unit:'97'
    city:'Stove'
    state:'New York'
    square_footage:'1200'
    price:'3500'
    bedrooms: 2
    bathrooms:1.5
    pets:'no'
    image:'https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1774&q=80'


}
{
    street:'564 highcutt ave'
    unit:'11'
    city:'Bean'
    state:'Florida'
    square_footage:'3200'
    price:'3650'
    bedrooms: 4
    bathrooms:5.4
    pets:'yes'
    image:'https://images.unsplash.com/photo-1630699375895-fe5996d163ee?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80'

}]

