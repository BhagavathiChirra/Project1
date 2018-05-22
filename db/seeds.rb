User.destroy_all

u1 = User.create email: 'bagi@ga.com',name: 'bagi', password: 'chicken', admin: 1
u2 = User.create email: 'chia@ga.com',name: 'chia', password: 'chicken', admin: 0
u3 = User.create email: 'chicha@ga.com',name: 'chicha', password: 'chicken', admin: 0

puts "Created #{User.all.length} users."

Product.destroy_all

p1 = Product.create name: 'Silver necklace', price: '2.99', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAkPNjOjePXBu_HrvULtBcqpeWrtgpBFMdiZJvRlYiuazXRTFvOQ', description: 'Women Necklace Ladies Jewellery Crystal Pendant Chain Char Silver Blue'
p2 = Product.create name: 'Gold ring', price: '120', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk4injFthT_7IUCV7G5HuDV-0XNSGx9Y6I_Dt-a1Ew-_k_a8aR', description: 'Gold ring'

p3 = Product.create name: 'Gold bangles', price: '1000', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMg-Igaxal2DOHJeiHH1cM-zMUXyHuURniVsaCWVK-P7b1yarv', description: 'Gold bangles with white stones'

p4 = Product.create name: 'Gold necklace set', price: '18.99', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH9nViQ1R-T0CMAnEGfx9u9hyiuEyrRdWNVsBo8NpoJ_oB6ZjUTA', description: 'gold necklace set with ear rings'

p5 = Product.create name: 'Ear rings', price: '28', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcDbNa4gV9uQcZKbkdedtVJSvWy-W4lb8-3XJHDI7eW4hkdMN0Gg', description: 'Ear rings imitation jewellery'

p6 = Product.create name: 'Hangings', price: '15', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYOvdb2A0IHt3nPbnhSHfaHYvWP2fgJ_DKqT9KWCXL_yfcN4WrTA', description: 'Hangings imitation jewellery'

p7 = Product.create name: 'Interactive Toy', price: '20', image: 'https://images.parents.mdpcdn.com/sites/parents.com/files/styles/width_360/public/images/p_TargetLeapFrogABC.jpg', description: 'Toy for toddler'

p8 = Product.create name: 'Disney Mickey', price: '18', image: 'http://www.hamleys.com/poland/images/_lib/disney-mickey-mouse-baby-mickey-talking-soft-toy-3752-0-1417097799000.jpg', description: 'talking soft toy'

p9 = Product.create name: 'Teaching Clock', price: '20', image: 'https://www.popcornfurniture.com/wp-content/uploads/2014/03/teaching-clock.jpg', description: 'Educational toy'

p10 = Product.create name: 'Tukish Kitchenware', price: '15', image: 'https://sc01.alicdn.com/kf/HTB1wV13X_ZKL1JjSZFIq6x_DFXaf/Hest-selling-turkish-nylon-kitchenware-set-for.jpg', description: 'Tukish Kitchenware set'

p11 = Product.create name: 'Kitchenware', price: '40', image: 'http://www.ugabox.com/images/shop/march-2017/kitchenware/Kitchenware-Kitchens-Cookeryware-Cooking-Equipment-Online-Shop-Kampala-Uganda-13.jpg', description: 'Kitchenware'

p12 = Product.create name: 'Slow Cooker', price: '50', image: 'http://www.ugabox.com/images/shop/march-2017/kitchenware/Kitchenware-Kitchens-Cookeryware-Cooking-Equipment-Online-Shop-Kampala-Uganda-15.jpg', description: 'slow cooker'


puts "Created #{Product.all.length} products."

# c1 = Cart.create user:u1, product:p1

u1.products << p1 << p2 << p3   # add items to user's shopping cart

Category.destroy_all

c1 = Category.create name: 'jewellery', image: 'https://s3-ap-southeast-2.amazonaws.com/leonard-joel/wp-content/uploads/2015/06/JEWELLERY-546x375.jpg'

c2 = Category.create name: 'toys', image: 'https://www.whatsuplife.in/hyderabad/blog/wp-content/uploads/2016/02/toy.jpg'

c3 = Category.create name: 'cook ware', image: 'https://thumb7.shutterstock.com/display_pic_with_logo/3321500/316887521/stock-vector-set-of-kitchen-utensils-and-food-cookware-home-cooking-background-kitchenware-modern-design-316887521.jpg'

puts "Created #{Category.all.length} categories."

c1.products << p1 << p2 << p3 << p4 << p5 << p6

c2.products << p7 << p8 << p9

c3.products << p10 << p11 << p12
