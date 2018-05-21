User.destroy_all

u1 = User.create email: 'bagi@ga.com',name: 'bagi', password: 'chicken'
u2 = User.create email: 'chia@ga.com',name: 'chia', password: 'chicken'
u3 = User.create email: 'chicha@ga.com',name: 'chicha', password: 'chicken'

puts "Created #{User.all.length} users."

Product.destroy_all

p1 = Product.create name: 'Silver necklace', price: '2.99', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAkPNjOjePXBu_HrvULtBcqpeWrtgpBFMdiZJvRlYiuazXRTFvOQ', description: 'Women Necklace Ladies Jewellery Crystal Pendant Chain Char Silver Blue', category: 'jewellery'
p2 = Product.create name: 'Gold ring', price: '120', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk4injFthT_7IUCV7G5HuDV-0XNSGx9Y6I_Dt-a1Ew-_k_a8aR', description: 'Gold ring', category: 'jewellery'

p3 = Product.create name: 'Gold bangles', price: '1000', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMg-Igaxal2DOHJeiHH1cM-zMUXyHuURniVsaCWVK-P7b1yarv', description: 'Gold bangles with white stones', category: 'jewellery'

p4 = Product.create name: 'Gold necklace set', price: '18.99', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH9nViQ1R-T0CMAnEGfx9u9hyiuEyrRdWNVsBo8NpoJ_oB6ZjUTA', description: 'gold necklace set with ear rings', category: 'jewellery'

p5 = Product.create name: 'Ear rings', price: '28', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcDbNa4gV9uQcZKbkdedtVJSvWy-W4lb8-3XJHDI7eW4hkdMN0Gg', description: 'Ear rings imitation jewellery', category: 'jewellery'

p6 = Product.create name: 'Hangings', price: '15', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYOvdb2A0IHt3nPbnhSHfaHYvWP2fgJ_DKqT9KWCXL_yfcN4WrTA', description: 'Hangings imitation jewellery', category: 'jewellery'

puts "Created #{Product.all.length} products."

# c1 = Cart.create user:u1, product:p1

u1.products << p1 << p2 << p3   # add items to user's shopping cart
