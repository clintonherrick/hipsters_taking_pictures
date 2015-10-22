User.create!([
  {email: "hotline@hotline.com", encrypted_password: "$2a$10$9evgSyxl1jD5QExnwXGrIun/TQRCJzeGo/MUUVYh9P3d.Z2qEtVK6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-10-22 21:36:59", last_sign_in_at: "2015-10-22 21:36:59", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "HotlineBling", avatar_file_name: "hipster-358479_1920.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 633983, avatar_updated_at: "2015-10-22 21:36:58"},
  {email: "ajhaupt7@gmail.com", encrypted_password: "$2a$10$Yv.tdGW8dCQQavqK9tAEOuqjsDEpFBL9u/1OIrQF2kxTm6chk5xYW", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-10-22 21:41:18", last_sign_in_at: "2015-10-22 16:35:40", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "ajhaupt7", avatar_file_name: "Photo_on_10-22-15_at_2.38_PM.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 71954, avatar_updated_at: "2015-10-22 21:42:54"},
  {email: "crampton.travis@gmail.com", encrypted_password: "$2a$10$Ld5oJRS0xm2DIDagmq9B..mpfAphVu/x9qlCnH329NximfdfbhQ3C", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-10-22 21:43:13", last_sign_in_at: "2015-10-22 18:42:50", current_sign_in_ip: "::1", last_sign_in_ip: "::1", username: "traviscrampton", avatar_file_name: "Photo_on_10-22-15_at_2.38_PM__2.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 111622, avatar_updated_at: "2015-10-22 21:43:32"}
])
Comment.create!([
  {body: "This makes me feel uncomfortable", user_id: 1, picture_id: 12},
  {body: "HE USED TO CALL ME ON MY CELL PHONE", user_id: 4, picture_id: 12},
  {body: "Hey where do I get that Bracelet", user_id: 1, picture_id: 2},
  {body: "I know when that hotline bling", user_id: 1, picture_id: 13}
])
Favorite.create!([
  {picture_id: 13, user_id: 2},
  {picture_id: 12, user_id: 2},
  {picture_id: 12, user_id: 1},
  {picture_id: 12, user_id: 4},
  {picture_id: 10, user_id: 4},
  {picture_id: 2, user_id: 1}
])
Picture.create!([
  {title: "Bunker Also Looking Good", user_id: 1, asset_file_name: "bunker1.jpg", asset_content_type: "image/jpeg", asset_file_size: 18053, asset_updated_at: "2015-10-22 16:12:33"},
  {title: "Santa Bunk", user_id: 1, asset_file_name: "bunker2.jpg", asset_content_type: "image/jpeg", asset_file_size: 22039, asset_updated_at: "2015-10-22 16:13:36"},
  {title: "Ping-Pong Bunk-Bonk", user_id: 1, asset_file_name: "bunker3.jpg", asset_content_type: "image/jpeg", asset_file_size: 56620, asset_updated_at: "2015-10-22 16:14:03"},
  {title: "There's no bigger accomplishment than graduating HighSchool", user_id: 1, asset_file_name: "youngbunk.jpg", asset_content_type: "image/jpeg", asset_file_size: 35474, asset_updated_at: "2015-10-22 16:14:46"},
  {title: "Steer", user_id: 1, asset_file_name: "salty-off-grid-pre.jpg", asset_content_type: "image/jpeg", asset_file_size: 134964, asset_updated_at: "2015-10-22 16:15:20"},
  {title: "When Bunker Was a Gardener", user_id: 2, asset_file_name: "445290831_640.jpg", asset_content_type: "image/jpeg", asset_file_size: 30274, asset_updated_at: "2015-10-22 16:16:18"},
  {title: "The Sickest Selfie Ever", user_id: 2, asset_file_name: "230144_2051606014250_6375017_n.jpg", asset_content_type: "image/jpeg", asset_file_size: 71649, asset_updated_at: "2015-10-22 16:16:42"},
  {title: "Good Times Eatin Beans", user_id: 2, asset_file_name: "225458_2051593293932_6492843_n.jpg", asset_content_type: "image/jpeg", asset_file_size: 42687, asset_updated_at: "2015-10-22 16:17:15"},
  {title: "Man of the Year", user_id: 2, asset_file_name: "11081445_432973880210278_6154288703794756707_n.jpg", asset_content_type: "image/jpeg", asset_file_size: 107003, asset_updated_at: "2015-10-22 16:39:07"},
  {title: "Sure I'll Pair With You Next Tuesday!", user_id: 2, asset_file_name: "774766_10200393556106040_872706894_o.jpg", asset_content_type: "image/jpeg", asset_file_size: 328261, asset_updated_at: "2015-10-22 16:46:51"},
  {title: "The Hats of Heupler", user_id: 2, asset_file_name: "541925_10200722205839697_1707849612_n.jpg", asset_content_type: "image/jpeg", asset_file_size: 95320, asset_updated_at: "2015-10-22 16:47:41"},
  {title: "Fresh Candy and A Sexy Smolder", user_id: 2, asset_file_name: "10469889_10204641565461238_5329401542212634084_n.jpg", asset_content_type: "image/jpeg", asset_file_size: 51223, asset_updated_at: "2015-10-22 16:48:27"},
  {title: "JAKE LOOKING REAL GOOD", user_id: 1, asset_file_name: "selfie.jpg", asset_content_type: "image/jpeg", asset_file_size: 21375, asset_updated_at: "2015-10-22 16:11:38"}
])
Picture::HABTM_Tags.create!([
  {picture_id: 8, tag_id: 1},
  {picture_id: 9, tag_id: 1},
  {picture_id: 1, tag_id: 1},
  {picture_id: 5, tag_id: 1},
  {picture_id: 1, tag_id: 2},
  {picture_id: 6, tag_id: 2},
  {picture_id: 13, tag_id: 3},
  {picture_id: 12, tag_id: 3},
  {picture_id: 12, tag_id: 4},
  {picture_id: 13, tag_id: 4},
  {picture_id: 10, tag_id: 3},
  {picture_id: 4, tag_id: 5},
  {picture_id: 4, tag_id: 6}
])
Tag.create!([
  {name: "#fun"},
  {name: "#sex"},
  {name: "#hawt"},
  {name: "#heupler"},
  {name: "#athlete"},
  {name: "#oregon state"}
])
Tag::HABTM_Pictures.create!([
  {picture_id: 8, tag_id: 1},
  {picture_id: 9, tag_id: 1},
  {picture_id: 1, tag_id: 1},
  {picture_id: 5, tag_id: 1},
  {picture_id: 1, tag_id: 2},
  {picture_id: 6, tag_id: 2},
  {picture_id: 13, tag_id: 3},
  {picture_id: 12, tag_id: 3},
  {picture_id: 12, tag_id: 4},
  {picture_id: 13, tag_id: 4},
  {picture_id: 10, tag_id: 3},
  {picture_id: 4, tag_id: 5},
  {picture_id: 4, tag_id: 6}
])
