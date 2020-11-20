local module = {}

module.quests = {
    {
        {
            name = "mop",
            frames = {
                {
                    dialogs = {
                        {
                            char = "lucky",
                            text = "And once I deliver this 4 leaf clover to my Grand Mama..."
                        },
                        {
                            char = "lucky",
                            text = "She will tell me the answer to elf's riddle."
                        },
                        {
                            char = "lucky",
                            text = "And you and I can unlock the treasure chest..."
                        }, {char = "cow01", text = "Mooo."}, {
                            char = "lucky",
                            text = "But alas... I need just one more gold to afford the journey..."
                        }
                    },
                    characters01 = {},
                    characters02 = {
                        {name = "lucky"}, {name = "cow01"}, {name = "chick01"}
                    }
                }, {
                    dialogs = {
                        {char = "goat01", text = "Baaaaa..."},
                        {char = "lucky", text = "Oh my poor Grand Mama..."},
                        {char = "cow01", text = "Baaaa."},
                        {char = "empty", text = "My poor, sick Grand Mama..."}
                    },
                    characters01 = {},
                    characters02 = {
                        {name = "lucky"}, {name = "cow01"}, {name = "goat01"}
                    }
                }, {
                    dialogs = {
                        {char = "cow01", text = "Listen! What is this I hear?"},
                        {
                            char = "lucky",
                            text = "Did I just hear a... ... a giggle?"
                        }, {char = "cow01", text = "Moooo..."},
                        {char = "chick01", text = "Peep. Peep."},
                        {char = "lucky", text = ""}
                    },
                    characters01 = {},
                    characters02 = {
                        {name = "lucky"}, {name = "cow01"}, {name = "chick01"}
                    }
                }, {
                    dialogs = {
                        {char = "lucky", text = "Why yes.  Yes inded!"},
                        {char = "lucky", text = "Lady Luck has smiled upon us!"},
                        {
                            char = "lucky",
                            text = "and sent us a whole platter of fresh..."
                        }
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "lucky"}, {name = "cow01"}}
                }, {
                    dialogs = {
                        {char = "luke01", text = "Where are we?"},
                        {char = "hudson01", text = "I have no idea."},
                        {char = "luke01", text = "Mom said this was a game..."},
                        {char = "lucky", text = "Mom lied."},
                        {char = "lucky", text = "...fresh faces!"}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "lucky"}, {name = "cow01"}}
                }, {
                    dialogs = {
                        {char = "lucky01", text = "Well hello lads..."},
                        {char = "hudson01", text = "We are from Connecticut."},
                        {
                            char = "lucky01",
                            text = "Hello Boys from Connecticut."
                        },
                        {
                            char = "lucky01",
                            text = "What brightly colored tunics you wear."
                        }, {char = "chick01", text = ""},
                        {char = "luke01", text = "Our mom bought them for us."},
                        {
                            char = "lucky01",
                            text = "I can see your mom has excellent taste."
                        }, {
                            char = "lucky01",
                            text = "Does every child in Connecticut have a shirt like that?"
                        }, {char = "hudson01", text = "I think so."},
                        {
                            char = "lucky01",
                            text = "Well, perhaps you could lend it to me one day."
                        }, {
                            char = "lucky01",
                            text = "I could use it to scare the chickens out of my pea patch."
                        }, {char = "luke01", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "lucky01"}, {name = "cow01"}}
                }, {
                    dialogs = {
                        {char = "hudson01", text = "You have a pea patch?"},
                        {char = "cow01", text = "I've just been peeing..."},
                        {char = "chick01", text = "Well, kind of everywhere..."},
                        {char = "chick01", text = ""},
                        {
                            char = "lucky01",
                            text = "Forgive my manners, let me introduce myself."
                        },
                        {char = "lucky01", text = "My friends call me Lucky."},
                        {
                            char = "hudson01",
                            text = "Our mom is making us do this."
                        },
                        {
                            char = "lucky01",
                            text = "But alas, my Luck seems to have run out"
                        }, {char = "luke01", text = "Can we play MineCraft?"},
                        {char = "chick01", text = ""},
                        {char = "lucky01", text = "Mine Craft?"},
                        {char = "lucky01", text = "Pish-Posh."},
                        {char = "lucky01", text = "Be off with you then."},
                        {char = "lucky01", text = "Go play your video games."},
                        {
                            char = "lucky01",
                            text = "You don't look like the sort of fellows who would be interested in old riddles and buried treasure."
                        }, {
                            char = "lucky01",
                            text = "You would probably just laugh at me like all the rest..."
                        }, {char = "empty", text = ""},
                        {char = "luke01", text = "I like riddles!"},
                        {char = "luke01", text = "Buried treasure?"}, {
                            char = "lucky01",
                            text = "Besides, I must be off now, if I am to get to the Rap Battle..."
                        }, {char = "luke01", text = "Rap Battle?"},
                        {char = "cow01", text = ""},
                        {char = "luke01", text = "Tell us your riddle Lucky!"},
                        {
                            char = "lucky01",
                            text = "Ah, I can see you are clever boys..."
                        },
                        {
                            char = "lucky01",
                            text = "Quickly then, and lean in close."
                        }, {
                            char = "lucky01",
                            text = "If one of the Trolls hears the riddle, then we may as well just dig up the treasure chest and hand it to them."
                        },
                        {char = "cow01", text = "<cut to Troll Tricker quest>"},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "lucky01"}, {name = "cow01"}}
                }
            }
        }, {
            name = "mat",
            frames = {
                {
                    dialogs = {
                        {char = "trollKing01", text = "I am Troll King!"},
                        {char = "trollKing01", text = "Who goes there?"},
                        {char = "luke01", text = "I'm Luke."},
                        {char = "hudson01", text = "I'm Hudson."}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "trollKing01"}, {name = "bun"}}
                }, {
                    dialogs = {
                        {
                            char = "trollKing01",
                            text = "What fancy shirts Luke and Hudson..."
                        }, {char = "luke01", text = "We are from Connecticut."},
                        {
                            char = "trollKing01",
                            text = "Have you come to steal my Jam?"
                        }, {char = "hudson01", text = "No."},
                        {char = "luke01", text = "Maybe..."}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "trollKing01"}}
                }, {
                    dialogs = {
                        {
                            char = "trollKing01",
                            text = "Or are you here to do the Zam???"
                        }, {char = "hudson01", text = "Neither"},
                        {char = "luke01", text = "Both."},
                        {char = "luke01", text = "What's the Zam?"}, {
                            char = "trollKing01",
                            text = "Hold on.  Let me take this thing off... Someone start the music..."
                        }
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "trollKing01"}}
                }, {
                    dialogs = {
                        {char = "luke01", text = "What's the Zam?"},
                        {
                            char = "trollKing",
                            text = "The Zam is the dance you do"
                        },
                        {char = "trollKing", text = "If you're a fancy dude"},
                        {char = "fancyDudeFromFrance01", text = "from France"},
                        {char = "trollKing", text = "and you"},
                        {char = "trollKing", text = "just got"},
                        {char = "trollKing", text = "jam on your hands"},
                        {char = "trollKing", text = "But you gotta go dance"},
                        {char = "trollKing", text = "So you flap em in the air"},
                        {
                            char = "fancyDudeFromFrance01",
                            text = "Like a couple of fans"
                        },
                        {
                            char = "trollKing",
                            text = "That are covered with ants!"
                        }
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {
                        {name = "trollKing"}, {name = "fancyDudeFromFrance01"}
                    }
                }, {
                    dialogs = {
                        {char = "hudson01", text = "We like the Zam man..."},
                        {char = "luke01", text = "But we need to scram!"},
                        {char = "trollKing", text = "Can I come with you?"},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {
                        {name = "trollKing"}, {name = "fancyDudeFromFrance01"}
                    }
                }
            }
        }, {
            name = "cap",
            frames = {
                {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Wow.  Are those space shirts?"
                        }, {char = "hudson01", text = "Our mom bought them."},
                        {char = "britta01", text = "Your mom is cool!"},
                        {char = "luke01", text = "Are you Sid the Science Kid?"},
                        {char = "britta01", text = "No."}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}, {name = "raven05"}}
                }, {
                    dialogs = {
                        {char = "hudson01", text = "How do we get out of here?"},
                        {char = "britta01", text = "Ha!"},
                        {char = "britta01", text = "Good question."},
                        {char = "britta01", text = "There is only one way out."},
                        {char = "hudson01", text = "We'll take it!"},
                        {char = "luke01", text = "Are you Dora?"},
                        {char = "britta01", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "You need to go through Mount Dracmore."
                        }, {char = "hudson01", text = "ok..."},
                        {
                            char = "britta01",
                            text = "But first, you need to bring the bun to the pan."
                        },
                        {char = "luke01", text = "What are you talking about?"},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }, {
                    dialogs = {
                        {char = "britta01", text = "Did you get the bun?"},
                        {char = "luke01", text = "What?"},
                        {char = "hudson01", text = "Are you talking to us?"}, {
                            char = "britta01",
                            text = "Did you see this sign that said= \"You got the bun\"?"
                        }, {char = "hudson01", text = "No."},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Never mind.  It's not important."
                        }, {char = "britta01", text = "Just go to the pan."},
                        {char = "britta01", text = "You will earn 5 gold."},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }, {
                    dialogs = {
                        {
                            char = "hudson01",
                            text = "We can give one gold to the Leprechaun."
                        }, {char = "britta01", text = "What? No, no no!"},
                        {
                            char = "britta01",
                            text = "Never give the Leprechaun any gold, ever!"
                        },
                        {char = "hudson01", text = "But, his Grand Ma-Ma..."},
                        {char = "britta01", text = "Don't even talk to him."},
                        {char = "luke01", text = "I like him..."},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }, {
                    dialogs = {
                        {char = "hudson01", text = "How do we get home?"},
                        {
                            char = "luke01",
                            text = "Our mom said this was a game."
                        },
                        {
                            char = "britta01",
                            text = "Look, I am on a dress quest."
                        },
                        {
                            char = "britta01",
                            text = "I can help you.  Meet me at the pig in the wig."
                        },
                        {
                            char = "britta01",
                            text = "But you have to bring Hopps!"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "britta01"}}
                }
            }
        }, {
            name = "pan",
            frames = {
                {
                    dialogs = {
                        {char = "elf", text = "DO NOT GO IN THE CAVE!!!"},
                        {
                            char = "luke01",
                            text = "Are you a licensed character?"
                        },
                        {
                            char = "elf",
                            text = "Huh? What?  Look, a giant monster!"
                        }
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "elf"}}
                }, {
                    dialogs = {
                        {char = "elf", text = "DO NOT GO IN THE CAVE!!!"},
                        {char = "luke01", text = "Let's go in the cave."},
                        {char = "hudson01", text = "No way!"},
                        {char = "luke01", text = "I'm going to the rap battle!"},
                        {char = "liz2", text = ""}
                    },
                    characters01 = {{name = "luke01"}, {name = "hudson01"}},
                    characters02 = {{name = "elf"}}
                }
            }
        }
    }, {
        {
            name = "swing",
            frames = {
                {
                    dialogs = {
                        {char = "fiona01", text = "Hi. I am K'at."},
                        {char = "marli01", text = "And I am Liz."},
                        {char = "fiona01", text = "Look! Look!"},
                        {char = "marli01", text = "What?"},
                        {char = "fiona01", text = "I see a skull!"},
                        {char = "marli01", text = "ummmm.... you see a what?"},
                        {char = "fiona01", text = "I see a skull... and a..."},
                        {char = "marli01", text = "What?!! A skull?"},
                        {char = "fiona01", text = "I see a skull too..."},
                        {char = "marli01", text = "Is that weird?"},
                        {char = "fiona01", text = "Is it weird to see a skull?"},
                        {char = "marli01", text = "yes."},
                        {char = "fiona01", text = "No. I don't think so..."},
                        {char = "marli01", text = "huh?"},
                        {
                            char = "fiona01",
                            text = "Wait, is this your first day?"
                        }, {char = "marli01", text = "yup."},
                        {
                            char = "fiona01",
                            text = "Oh. ok. So yes, it is a bit weird..."
                        },
                        {
                            char = "marli01",
                            text = "Oh good! I thought I was going crazy again..."
                        }, {
                            char = "fiona01",
                            text = "I mean, it's weird... But for this place... it's kind of normal."
                        }, {char = "marli01", text = "Oh wow."},
                        {
                            char = "fiona01",
                            text = "Let's take a look at that skull."
                        }, {
                            char = "marli01",
                            text = "It looks like there is an old old ring on the skull."
                        },
                        {
                            char = "fiona01",
                            text = "Oh my gosh! It's the... the..."
                        }, {char = "marli01", text = "Spit it out Kat!"},
                        {char = "fiona01", text = "That's the ring of andakar!"},
                        {char = "marli01", text = "Do what now?"},
                        {
                            char = "fiona01",
                            text = "There is no time to explain!"
                        }, {char = "marli01", text = "ok."},
                        {
                            char = "fiona01",
                            text = "We have to get this ring to Grimelda!"
                        }, {
                            char = "marli01",
                            text = "What do you mean we? Do you have a mouse in your pocket."
                        }, {char = "fiona01", text = "We need to hurry!"},
                        {
                            char = "marli01",
                            text = "And B. Who or what is a Grimelda?"
                        }, {
                            char = "fiona01",
                            text = "The witch. Grimelda is the witch, who lives behind the waterfall!"
                        }, {
                            char = "marli01",
                            text = "Ok. Actually, how about you take it? You seem pretty... uhhhh... what's the word..."
                        },
                        {
                            char = "fiona01",
                            text = "There is no time to explain..."
                        }, {char = "marli01", text = "\"...bonkers..."},
                        {
                            char = "fiona01",
                            text = "Come with me if you want to live!"
                        },
                        {
                            char = "marli01",
                            text = "Oh what the heck! You seem fun."
                        }, {char = "fiona01", text = "Hi Taffy!"},
                        {
                            char = "marli01",
                            text = "Taffy= Hi Liz and Kat. I lost my dog."
                        }, {char = "fiona01", text = "Wow. So sad."},
                        {char = "marli01", text = "We will look for your dog."},
                        {char = "fiona01", text = "Bye Bye."},
                        {char = "marli01", text = "Taffy. See you later."},
                        {char = "fiona01", text = "You found my dog!"},
                        {
                            char = "marli01",
                            text = "Yes.  Did you see the elf\\'s goat?"
                        },
                        {char = "fiona01", text = "The goat is on the hill."},
                        {
                            char = "marli01",
                            text = "Hi Strawberry. Did you see the dog?"
                        },
                        {
                            char = "fiona01",
                            text = "Strawberry= I saw the dog in the woods."
                        },
                        {
                            char = "marli01",
                            text = "oh good! We will go to the woods."
                        }, {char = "fiona01", text = "We will find the dog."},
                        {
                            char = "marli01",
                            text = "Strawberry. Look out for the elf!"
                        }, {char = "fiona01", text = "Bye Bye."},
                        {
                            char = "marli01",
                            text = "Hi elf! Can we go to the water fall in your boat?"
                        }, {char = "fiona01", text = "Hi elf!"},
                        {char = "marli01", text = "elf= A goat! A goat!"},
                        {char = "fiona01", text = "huh?"},
                        {
                            char = "marli01",
                            text = "elf= I need a goat in my boat!"
                        }, {char = "fiona01", text = "That's normal..."}
                    },
                    characters01 = {{name = "marli01"}, {name = "fiona01"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }
    }, {
        {
            name = "hill",
            frames = {
                {
                    dialogs = {
                        {char = "bunny", text = "Baby Troll... Baby Troll..."},
                        {char = "cow01", text = "What's in the bag?"},
                        {char = "bunny", text = "Maybe it's gold!"},
                        {
                            char = "cow01",
                            text = "Maybe it's an old baked potato he stole"
                        }, {char = "robby01", text = "On the way to"},
                        {char = "parta03", text = "the Baby Troll show!"},
                        {char = "will01", text = "Tee Hee Hee!"}
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "bunny"}, {name = "cow01"}, {name = "robby01"},
                        {name = "parta03"}
                    }
                }, {
                    dialogs = {
                        {char = "elf", text = "Huff Huff Huff..."},
                        {char = "will01", text = "Wait!  Wait!"},
                        {char = "elf", text = "Are you done?"},
                        {
                            char = "cow01",
                            text = "Sorry little buddy, they just finished up."
                        }
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "bunny"}, {name = "cow01"}, {name = "elf"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "simon01",
                            text = "I wrote... I wrote some new parts..."
                        }, {char = "simon01", text = "<sniffle> <sniffle>"}, {
                            char = "looney01cu",
                            text = "We just finished but... It looks like they're still rolling..."
                        }, {char = "empty", text = "Hit it!"}
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "trollKing01"}, {name = "looney01cu"},
                        {name = "simon01"}
                    }
                }, {
                    dialogs = {
                        {char = "bunny", text = "Maybe it's a some plah-doh?"},
                        {char = "will01", text = "Maybe it's mold!"},
                        {char = "goblin", text = "TROLL LIKE MOLD!"}
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "bunny"}, {name = "cow01"}, {name = "goblin"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "trollKing01",
                            text = "Maybe it's a roller skate!"
                        }, {char = "elf", text = "A paper clip!"},
                        {char = "trollKing01", text = "A roll of tape!"},
                        {char = "elf", text = "A rake!"},
                        {char = "trollKing01", text = "A pot of paste"},
                        {char = "elf", text = "an old potato chip!"},
                        {char = "trollKing01", text = "a crow!"}
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "trollKing01"}, {name = "rosco01"},
                        {name = "elf"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "elf",
                            text = "But if you never wanna knoooooow......"
                        },
                        {
                            char = "elf",
                            text = "You better go watch the baby troll show!"
                        }
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "freckle01"}, {name = "will01"},
                        {name = "hopps01"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "saki",
                            text = "Mom, can I get a baby troll lunch box?"
                        }, {char = "tanya02", text = "Huh? What?!?"},
                        {
                            char = "tanya02",
                            text = "Honey, I don't even know what a baby troll is."
                        },
                        {
                            char = "saki",
                            text = "Me want lunch box! Me want lunch box! Waaaaaa!"
                        }
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {{name = "tanya02"}, {name = "saki"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "Ok, clear out the sound booth"},
                        {char = "empty", text = "Um, where should I go now?"},
                        {
                            char = "empty",
                            text = "Look kid, you sounded great, but the boss says we're not taking any new entries."
                        }, {
                            char = "empty",
                            text = "I think he's going to let his son, Bratty McBrattsworth the Third win the prize."
                        },
                        {
                            char = "empty",
                            text = "Bratty McBrattsworth the Third?"
                        }
                    },
                    characters01 = {{name = "blank"}, {name = "will01"}},
                    characters02 = {
                        {name = "bunny"}, {name = "cow01"}, {name = "elf"}
                    }
                }
            }
        }, {
            name = "coop",
            frames = {
                {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "Tra    la-la-la               la!"
                        },
                        {
                            char = "babyTroll02",
                            text = "Tra-la      la-la    la-la     la!"
                        }
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "Hey!  Are you the new girl?"
                        }, {
                            char = "parta03",
                            text = "Well if I were, I'm not sure I would tell a creature who's manners seem to have run off on holiday along with his bathing routine."
                        }, {char = "babyTroll02", text = "Ha!  You're funny!"},
                        {char = "parta03", text = "Wanna go on an adventure?"},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "parta03",
                            text = "And who says I'm not off on an adventure right now?"
                        },
                        {
                            char = "parta03",
                            text = "Full of daring escapades and narrow escapes!"
                        }, {char = "babyTroll02", text = "Wow! Are you?"},
                        {char = "parta03", text = "Yes I am Troll Boy..."},
                        {
                            char = "babyTroll02",
                            text = "It's actually Baby Troll."
                        }, {char = "parta03", text = "...yes I am..."},
                        {
                            char = "parta03",
                            text = "And I just made a new friend."
                        }
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "Can I come along on your adventure?"
                        }, {char = "parta03", text = "Do you bite?"},
                        {char = "babyTroll02", text = "I think so."},
                        {char = "parta03", text = "Do you snore?"},
                        {char = "babyTroll02", text = "I think so."}, {
                            char = "empty",
                            text = "Is your heart as stout as an oak, yet soft as a fox's fur?"
                        }, {char = "empty", text = "Ummm..."}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {char = "parta03", text = "I suppose you will do."},
                        {
                            char = "parta03",
                            text = "I hereby make you a Beetle Scout First Class."
                        }, {
                            char = "parta03",
                            text = "We shrink not from danger and step softly in the shadows."
                        }, {char = "babyTroll02", text = "Awesome!"},
                        {
                            char = "parta03",
                            text = "And you can have a 25% stake in the treasure."
                        }
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "You are very kind.  In return, I shall use 25% of my strength to save you, if a giant snake ever creeps up on you from behind."
                        },
                        {
                            char = "babyTroll02",
                            text = "Hi-ya Snake!  Take that!"
                        }, {char = "snake01", text = "Eeep! Eeep!"},
                        {char = "snake01", text = "Run for the hills!"}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "snake01"}}
                }, {
                    dialogs = {
                        {
                            char = "parta03",
                            text = "Very well. We will split the treasure 50-50."
                        }, {
                            char = "empty",
                            text = "Your bravery will find a welcome home with the Beetle Scouts."
                        }, {
                            char = "empty",
                            text = "If we leave now, we can make Baldar's Gate in a fort nite."
                        }, {char = "empty", text = "I'll go tell my mom."}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "empty",
                            text = "My mom wants to know if it is dangerous."
                        }, {char = "empty", text = "Very."},
                        {
                            char = "empty",
                            text = "And she says to tell you I'm allergic mambo nuts."
                        },
                        {
                            char = "empty",
                            text = "Just mambo nuts or all tree nuts?"
                        },
                        {char = "empty", text = "She says pretty much any nut."}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "empty",
                            text = "Are you allergic to anything else?"
                        }, {char = "empty", text = "bees..."},
                        {char = "empty", text = "and gluten..."},
                        {char = "empty", text = "...and I'm afraid of clowns"}
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "Hey, can I hold your sword?"},
                        {
                            char = "empty",
                            text = "Sorry Baby Troll, viper is for my hands alone."
                        },
                        {
                            char = "empty",
                            text = "I've gotta get me one of those..."
                        }, {
                            char = "empty",
                            text = "Stab Stab!  Stab Stab! <stabs air with pretend sword>"
                        }, {char = "empty", text = "You do indeed."},
                        {
                            char = "empty",
                            text = "Let us see what the shire of Ostmont has in store."
                        }
                    },
                    characters01 = {{name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }, {
                    dialogs = {
                        {
                            char = "empty",
                            text = "Oh, and mom said to bring along Grey Wolf."
                        },
                        {
                            char = "empty",
                            text = "Don't worry, she won't eat much."
                        },
                        {
                            char = "empty",
                            text = "And she's as cute as a pig in a party hat!"
                        }, {char = "empty", text = "She sure is."},
                        {char = "empty", text = "Come on girl!"},
                        {char = "farf01", text = "Arf! Arf!"}
                    },
                    characters01 = {{name = "farf01"}, {name = "babyTroll02"}},
                    characters02 = {{name = "parta03"}, {name = "blank"}}
                }
            }
        }, {
            name = "castle",
            frames = {
                {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Go uh.... should I  just grab it?"
                        }, {
                            char = "robby01",
                            text = "Yeah, go for it.  How is this different than grabbing a bun off the ground?"
                        }, {
                            char = "empty",
                            text = "Well, it might be different because that was a dirty old bun on the ground, and this is the Scepter of Truth."
                        },
                        {
                            char = "empty",
                            text = "Well, you took that talking backpack."
                        }, {
                            char = "empty",
                            text = "I think technically that could be considered livestock rustling."
                        }, {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {
                        {name = "britta01"}, {name = "staffOfTruth01"},
                        {name = "robby01"}
                    },
                    characters02 = {
                        {name = "springer01"}, {name = "avatar01"},
                        {name = "empty"}, {name = "empty"}
                    }
                }
            }
        }
    }, {
        {
            name = "cave",
            frames = {
                {
                    dialogs = {
                        {char = "fiona01", text = "Hey guys, guys, guys!"},
                        {
                            char = "maceo03",
                            text = "The teacher kicked herself off the zoom."
                        }, {char = "lucy07small", text = "What?!?"},
                        {char = "fiona01", text = "Everyone freeze!"},
                        {
                            char = "girl04",
                            text = "Stay cool.  Do NOT press any buttons!"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Let's do some calming breaths..."
                        }, {char = "empty", text = ""},
                        {char = "lucy07small", text = "Buuuurpppp...."},
                        {char = "babyTroll02", text = "Real classy Lucinda"},
                        {
                            char = "fiona01",
                            text = "All those years of finishing school..."
                        }, {char = "maceo03", text = "...and for what???"},
                        {char = "girl04", text = "tsk... tsk..."},
                        {
                            char = "fiona01",
                            text = "Everyone! Just be quiet and listen..."
                        }, {char = "girl04", text = "hello... Ms. Magpie..."},
                        {char = "fiona01", text = "Ms. Magpie..."},
                        {
                            char = "lucy07small",
                            text = "are you still on the call?"
                        }, {char = "empty", text = ""}
                    },
                    characters01 = {
                        {name = "babyTroll02"}, {name = "girl04"},
                        {name = "fiona01"}
                    },
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"},
                        {name = "maceo03"}
                    }
                }, {
                    dialogs = {
                        {char = "cricket01", text = "<chirp> <chirp>"},
                        {char = "lucy07small", text = "Mooooooo....."},
                        {char = "maceo03", text = "Rap Battle!!!!!"},
                        {char = "raven05", text = "put a cat a"},
                        {char = "raven05", text = "put a cat a"}
                    },
                    characters01 = {{name = "cricket01"}, {name = "fiona01"}},
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"},
                        {name = "maceo03"}, {name = "raven05"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "fiona01",
                            text = "This morning I woke up happy"
                        }, {char = "fiona01", text = "Hmmm... I thought"},
                        {
                            char = "fiona01",
                            text = "I think I'll go wake up pappy!"
                        },
                        {
                            char = "fiona01",
                            text = "I gave my dad a jab with a toy taxi"
                        }, {char = "fiona01", text = "and when he awoke"}, {
                            char = "fiona01",
                            text = "I pressed my face right up close to his nose, and said"
                        },
                        {char = "fiona01", text = "Why are you looking at me?"},
                        {char = "fiona01", text = ""},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "My dad just stared back un-flapped"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "still wearing his night cap."
                        }, {char = "fiona01", text = ""},
                        {char = "empty", text = "he just said"},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Girl, you've lost your marbles!"
                        }, {
                            char = "oliveRori01cu02Eyes",
                            text = "but the rest of what he said got lost and garbled"
                        }, {
                            char = "oliveRori01cu02Eyes",
                            text = "when I brushed my teeth, flossed and gargled"
                        }, {char = "babyTroll02", text = ""},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "...kinda accidentally"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "I get distracted mentally"
                        }, {char = "babyTroll02", text = ""},
                        {
                            char = "raven04",
                            text = "So I missed the end of what he said"
                        },
                        {
                            char = "raven04",
                            text = "and most likely the middle too."
                        }, {char = "raven04", text = "But it's not my fault!"},
                        {
                            char = "raven04",
                            text = "I just wanted to wiggle this little tooth"
                        },
                        {
                            char = "raven04",
                            text = "and it tickled, so I giggled"
                        }, {char = "raven04", text = "and when I wriggled"},
                        {
                            char = "raven04",
                            text = "the little tooth jiggled loose!"
                        }, {char = "empty", text = ""},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Now she was in a pickle too!"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "She'd just taken a big old"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "giant swig of purple juice"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "But it wasn't purple juice"
                        },
                        {char = "oliveRori01cu02Eyes", text = "Her confused."},
                        {char = "empty", text = ""},
                        {char = "raven04", text = "It was pickle juice!"},
                        {
                            char = "raven04",
                            text = "It made her nose tickle. Eeeew!"
                        },
                        {
                            char = "raven04",
                            text = "And suddenly she had to sneeze"
                        }, {char = "raven04", text = "And hiccup too!"},
                        {char = "raven04", text = ""}, {
                            char = "oliveRori01cu02Eyes",
                            text = "I gasped as it all happened in slow motion"
                        }, {
                            char = "oliveRori01cu02Eyes",
                            text = "I sat frozen as practically a whole ocean of pickle juice"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "exploded out of her nose"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "into the living room"
                        }, {char = "empty", text = ""},
                        {char = "raven04", text = "And right there"},
                        {char = "raven04", text = "tumbling through the air"},
                        {char = "raven04", text = "in the middle you"},
                        {char = "raven04", text = "could see her little tooth"},
                        {char = "fiona01", text = ""},
                        {
                            char = "raven04",
                            text = "And I was pretty sure it was coming to get me!"
                        }, {
                            char = "raven04",
                            text = "...ummmm, can we possibly push this next thing to next week?"
                        },
                        {
                            char = "raven04",
                            text = "Or ... ummm.. maybe never..."
                        }, {char = "raven04", text = "Maybe just text me."},
                        {char = "lucy07small", text = ""}, {
                            char = "oliveRori01cu02Eyes",
                            text = "Then ducked and held up my lunch tray to try to protect me"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "But her tooth slammed into my nose"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "and it deflected off my left cheek"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "like a defective jet ski"
                        }, {char = "empty", text = ""},
                        {
                            char = "raven04",
                            text = "And as her tooth zoomed by, I saw it wave"
                        },
                        {
                            char = "raven04",
                            text = "make this weird face, and say="
                        },
                        {
                            char = "raven04",
                            text = "\"...ummm... waiter? ...check please!\""
                        }
                    },
                    characters01 = {
                        {name = "babyTroll02"}, {name = "raven04"},
                        {name = "fiona01"}
                    },
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"}
                    }
                }, {
                    dialogs = {
                        {char = "babyTroll02", text = ""},
                        {
                            char = "lara01",
                            text = "Oh, hey guys.  I'm still on the call."
                        },
                        {
                            char = "lara01",
                            text = "And I've entered you all into the Rap Battle."
                        }, {char = "lara01", text = "What's a rap battle?"},
                        {char = "lara01", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {
                        {name = "babyTroll02"}, {name = "raven04"},
                        {name = "fiona01"}
                    },
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"},
                        {name = "lara01"}
                    }
                }
            }
        }, {
            name = "staffOfTruth01",
            frames = {
                {
                    dialogs = {
                        {
                            char = "lucy07small",
                            text = "Wait, so Miss Marigold is off the call?"
                        }, {char = "lucy07small", text = "Uhh... I think so.."},
                        {char = "raven04", text = "Um hello?"},
                        {char = "cricket01", text = "chrip chirp"},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "I am the banana queen!"
                        }, {char = "lucy07small", text = "ha ha ha ha"},
                        {char = "fiona01", text = "What does that even mean?"},
                        {char = "raven04", text = "I don't know."},
                        {char = "lucy07small", text = "I saw it on TV."},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "In the liz and cat show."
                        }, {char = "raven04", text = "I love their faces."},
                        {char = "empty", text = ""},
                        {
                            char = "fiona01",
                            text = "Hey Rori, that's no fair you got unicorn eyes!"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Hey, I earned these!"
                        }, {
                            char = "oliveRori01cu02Eyes",
                            text = "You write direct and star in your own pilot.  It's a lot of work."
                        }, {char = "empty", text = ""}, {
                            char = "fiona01",
                            text = "Lucinda how come you always look like it's your birthday and you just took a bite of a cupcake?"
                        },
                        {
                            char = "lucy07small",
                            text = "ummm.....I do lots of calming breaths?"
                        }, {char = "empty", text = ""}, {
                            char = "raven04",
                            text = "And fiona, you always look like you are listening to baby shark on repeat."
                        }, {char = "fiona01", text = "huh, what?"},
                        {char = "lucy07small", text = "Baby Shark..."},
                        {
                            char = "lucy07small",
                            text = "doot-doot doo doot-doot-doot"
                        }
                    },
                    characters01 = {
                        {name = "babyTroll02"}, {name = "raven04"},
                        {name = "fiona01"}
                    },
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"},
                        {name = "cricket01"}, {name = "empty"}
                    }
                }, {
                    dialogs = {
                        {char = "empty", text = ""},
                        {
                            char = "fiona01",
                            text = "There it is, that's the cave!"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Your soccer ball went in there?"
                        }, {char = "fiona01", text = "Go get it."},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "And get eaten by a bear?  No way!"
                        },
                        {char = "fiona01", text = "Have you lost your marbles?"},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Yeah, I actually lost those too..."
                        }, {char = "empty", text = ""},
                        {
                            char = "fiona01",
                            text = "Just hit the bear with your troll stick."
                        },
                        {
                            char = "babyTroll02",
                            text = "Before or after it eats me whole?"
                        },
                        {char = "fiona01", text = "Hmmm.... maybe try both."},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "I'm not going in."
                        }, {char = "lucy07small", text = "I'll do it."},
                        {char = "lucy07small", text = "I will go in the cave."},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "And welcome folks, to another well considered and completely safe plan by rori"
                        }, {char = "fiona01", text = "...said no one..."},
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Vulcan may be in that cave!"
                        },
                        {
                            char = "fiona01",
                            text = "Wouldn't it be on fire then...?"
                        },
                        {
                            char = "oliveRori01cu02Eyes",
                            text = "Caves don't burn."
                        },
                        {
                            char = "fiona01",
                            text = "Apparently you have never met Vulcan..."
                        }, {char = "raven04", text = ""}
                    },
                    characters01 = {
                        {name = "babyTroll02"}, {name = "raven04"},
                        {name = "fiona01"}
                    },
                    characters02 = {
                        {name = "lucy07small"}, {name = "oliveRori01cu02Eyes"},
                        {name = "cricket01"}, {name = "empty"}
                    }
                }
            }
        }
    }, {
        {
            name = "swing",
            frames = {
                {
                    dialogs = {
                        {
                            char = "kat",
                            text = "Rori, I'm gonna get real with you."
                        },
                        {
                            char = "rori",
                            text = "We must free the dragons from Maldred's evil spell!"
                        }, {
                            char = "kat",
                            text = "Rori, do you like sparkles and glitter beyond your wildest dreams?"
                        },
                        {
                            char = "rori",
                            text = "Does it shimmer with the power of the dragon stone?"
                        }, {char = "kat", text = "Oh yes... Oh yes it does..."},
                        {
                            char = "kat",
                            text = "Now, will you help us steal the dress from the dragon Watta-Lee-Achee?"
                        }, {char = "rori", text = "What class?"},
                        {
                            char = "liz2",
                            text = "K2. No, wait... K1.  Um...  both?"
                        },
                        {
                            char = "rori",
                            text = "I wasn't asking your kindergarten class!"
                        }, {char = "rori", text = "What class dragon is it?"},
                        {char = "liz2", text = "Oh... yeah right."},
                        {char = "rori", text = "Never mind."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "rori"}, {name = "vulcan01"}}
                }
            }
        }, {
            name = "lake",
            frames = {
                {
                    dialogs = {
                        {
                            char = "rori",
                            text = "I think Watta-Lee-Achee is a class 2 lava dragon with a minor healing enchantment."
                        }, {char = "liz2", text = "Doo-Da-Lee-Doo"},
                        {char = "rori", text = "What?"},
                        {char = "kat", text = "Ignore her..."},
                        {
                            char = "rori",
                            text = "Vulcan and I will battle Watta-Lee-Achee..."
                        },
                        {
                            char = "rori",
                            text = "...and free the Dress of Atacama once and for all!!!"
                        }, {char = "kat", text = "Thanks Rori!"},
                        {
                            char = "rori",
                            text = "I will join you on your Quest for the Dress!"
                        }, {char = "liz2", text = "thanks Rori!"},
                        {char = "rori", text = "I will join you..."},
                        {char = "rori", text = "...on your..."},
                        {char = "rori", text = "...Dress Quest!"},
                        {char = "liz2", text = "Doo-Da-Lee-Doo"}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "rori"}, {name = "vulcan01"}}
                }
            }
        }
    }, {
        {
            name = "log",
            frames = {
                {
                    dialogs = {
                        {
                            char = "kat",
                            text = "Morning Liz, what script did they give you today?"
                        }, {
                            char = "liz2",
                            text = "Just a sec, let me look , <flip>...  <flip>...  <flip>..."
                        },
                        {
                            char = "liz2",
                            text = "I see a lot of frog on the log stuff."
                        },
                        {
                            char = "liz2",
                            text = "And ooh, it looks like I lose my pig."
                        }
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "liz2", text = "What about you Kat?"},
                        {char = "kat", text = "Huh? What about me what?"},
                        {char = "liz2", text = "Your script."},
                        {char = "kat", text = "Oh, none for me today, thanks."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }, {
            name = "stump",
            frames = {
                {
                    dialogs = {
                        {
                            char = "liz2",
                            text = "Kat, please tell me you are not going to go off script..."
                        }, {
                            char = "liz2",
                            text = "Sorry Liz, but that ship has sailed.  I'm going full improv today!"
                        },
                        {
                            char = "liz2",
                            text = "But Kat, we could get in trouble!"
                        }
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "liz2",
                            text = "Oh Liz, I already took care of that.  See these picture I drew of us?"
                        },
                        {
                            char = "liz2",
                            text = "We just put them right here....."
                        }, {
                            char = "liz2",
                            text = "And viola!  Now we just sneak out the back and head to Cave Mountain!"
                        }
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }, {
            name = "bog",
            frames = {
                {
                    dialogs = {
                        {char = "liz2", text = "Kat! What about the rules???"},
                        {
                            char = "kat",
                            text = "Look, Liz, I love the scripts and all, the rhymes, the lost bunny... all that stuff."
                        }, {
                            char = "kat",
                            text = "But don't you ever think there may be something more to this place?"
                        }, {char = "kat", text = "On the outside."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "kat", text = "What if we did get that dress?"},
                        {
                            char = "kat",
                            text = "Well fine, you stay here.  I'm going to try for the dress."
                        },
                        {
                            char = "liz2",
                            text = "Ugggh... fine.  Go on your dress quest."
                        },
                        {
                            char = "kat",
                            text = "Let's meet up at the log tomorrow."
                        }, {char = "liz2", text = "Okay."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }
    }, {
        {
            name = "home",
            frames = {
                {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "La... la-la... la... la..."
                        }, {char = "chick01", text = "Peep Peep"},
                        {char = "cow01", text = "Mooooooo!"},
                        {char = "pup01", text = "Bark Bark!"},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {
                        {name = "chick01"}, {name = "cow01"}, {name = "pup01"}
                    }
                }
            }
        }, {
            name = "stump",
            frames = {
                {
                    dialogs = {
                        {char = "panda01", text = "Halt!  Who goes there?"},
                        {char = "babyTroll02", text = "Who goes where?"},
                        {
                            char = "panda01",
                            text = "Right there.  Right where you are standing."
                        },
                        {
                            char = "babyTroll02",
                            text = "Just a little green pig."
                        }, {char = "babyTroll02", text = "Oink oink!"}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {char = "panda01", text = "You are funny, green boy."},
                        {
                            char = "babyTroll02",
                            text = "Hey, are you the new girl?"
                        }, {char = "panda01", text = "Maybe I am..."},
                        {char = "panda01", text = "..and maybe I'm not."},
                        {char = "babyTroll02", text = "You look new."},
                        {char = "panda01", text = "I do? Why?"}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "Well, first, you are not a cow or a goat."
                        }, {char = "panda01", text = "You are very wise."},
                        {
                            char = "babyTroll02",
                            text = "And second, I know everyone in Troll Game."
                        }, {char = "panda01", text = "What is Troll Game?"},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {char = "babyTroll02", text = "Ha!  You are new."},
                        {
                            char = "babyTroll02",
                            text = "Wanna go on an adventure?"
                        }, {
                            char = "panda01",
                            text = "What makes you think I'm not on an adventure right now?"
                        }, {char = "babyTroll02", text = "Wow!  Are you?"},
                        {char = "panda01", text = "Yes I am.  Yes I am."},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {char = "babyTroll02", text = "Can I come?"},
                        {char = "panda01", text = "Do you bite?"},
                        {char = "babyTroll02", text = "Chomp!"},
                        {char = "panda01", text = "Can you whistle?"},
                        {char = "babyTroll02", text = "Tweet!"}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {char = "panda01", text = "Can you do this="},
                        {char = "panda01", text = "put-a-cat-a   put-a-cat-a"},
                        {
                            char = "babyTroll02",
                            text = "put-a-cat-a   put-a-cat-a"
                        },
                        {
                            char = "panda01",
                            text = "Well then, I suppose you shall do."
                        }, {char = "empty", text = ""},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }, {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "Oh goody!  Where are we going?"
                        }, {char = "panda01", text = "To the rap battle!"},
                        {char = "babyTroll02", text = "What's a rap battle?"},
                        {char = "panda01", text = "You will see..."},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "empty"}},
                    characters02 = {{name = "panda01"}}
                }
            }
        }, {
            name = "log",
            frames = {
                {
                    dialogs = {
                        {
                            char = "babyTroll02",
                            text = "So what is this rap battle thing?"
                        },
                        {
                            char = "panda01",
                            text = "Oh yeah, we need to teach you how to rap."
                        }, {char = "babyTroll02", text = "Cool!"},
                        {
                            char = "panda01",
                            text = "It's easy.  I will show you."
                        }, {char = "babyTroll02", text = "Wow!"},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "panda01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "panda01",
                            text = "Give me some put a put-a-cat-a"
                        },
                        {
                            char = "babyTroll02",
                            text = "put-a-cat-a   put-a-cat-a"
                        },
                        {
                            char = "panda01",
                            text = "And then just make up some rhymes like this."
                        }
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "panda01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "panda01", text = "My name is Troll."},
                        {char = "babyTroll02", text = "I live in a hole."},
                        {char = "panda01", text = "Me like Froot Loops"},
                        {char = "babyTroll02", text = "Give me a bowl."},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "panda01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {{name = "babyTroll02"}, {name = "panda01"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }
    }, {
        {
            name = "bug",
            frames = {
                {
                    dialogs = {
                        {char = "liz2", text = "I see a bug."},
                        {char = "liz2", text = "I see a bug...  in a rug!"},
                        {char = "kat", text = "Tee Hee Hee..."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "pup01"}}
                }
            }
        }, {
            name = "dragon",
            frames = {
                {
                    dialogs = {
                        {char = "kat", text = "I see a fly."},
                        {char = "liz2", text = "I see a fly... in my eye!."},
                        {
                            char = "kat",
                            text = "Aaahhhh!  Liz!  There's a fly in my eye!"
                        }, {char = "liz2", text = "I'm not kidding!"},
                        {char = "kat", text = "Oh no, what should we do?"}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "chick01"}}
                }
            }
        }, {
            name = "cat_king",
            frames = {
                {
                    dialogs = {
                        {char = "kat", text = "That frog!!!"},
                        {char = "liz2", text = "We have to get that frog!"},
                        {
                            char = "kat",
                            text = "You mean the frog on the log in the bog?"
                        },
                        {
                            char = "liz2",
                            text = "Yes.  The frog on the log in the bog!"
                        }
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "kat", text = "Ummm...why do we need a frog?"},
                        {
                            char = "liz2",
                            text = "It's the only way to get a fly out of your eye!!!"
                        }, {char = "kat", text = "What about a pig in a wig?"},
                        {char = "liz2", text = "Liiiizzzz!!!!"},
                        {char = "kat", text = "That's just not how it works."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "liz2", text = "Oh no, oh no , oh no!"},
                        {char = "kat", text = "Oh me, oh my!"},
                        {char = "liz2", text = "Ha! Gotcha!"},
                        {char = "kat", text = "I was just kidding."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "liz2", text = "Kat!  You are the worst!"},
                        {char = "kat", text = "You are bad to the bone!"}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }
    }, {
        {
            name = "home",
            frames = {
                {
                    dialogs = {
                        {char = "doorYellow", text = "<knock> <knock> <knock>!"},
                        {char = "tara01", text = "Will you hurry up in there!"},
                        {char = "doorYellow", text = "Give me a sec!"}, {
                            char = "tara01",
                            text = "Uuuughhh!  I just gave you like 15 bazillion millions seconds."
                        },
                        {
                            char = "tara01",
                            text = "Some of us need to use the bathroom.  For real."
                        }
                    },
                    characters01 = {{name = "doorYellow"}, {name = "blank"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {char = "prancer01", text = "Fine, it's all yours."},
                        {char = "tara01", text = "And your hair looks great."},
                        {char = "prancer01", text = "Thanks sis."}
                    },
                    characters01 = {{name = "blank"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "tara01",
                            text = "I mean, Matt really needs to learn how to use the magic wand tool..."
                        },
                        {
                            char = "tara01",
                            text = "But besides that... your hair looks great."
                        }, {
                            char = "tara01",
                            text = "...looks like it could have been great... should have been great..."
                        }, {char = "prancer01", text = "You are not helping."},
                        {char = "tara01", text = "Oh.  Sorry."}
                    },
                    characters01 = {{name = "blank"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "flight01",
                            text = "Good morning my beautiful princesses..."
                        }, {char = "prancer01", text = "Hi mom."},
                        {
                            char = "flight01",
                            text = "Are you all set for your big day Prancer?"
                        }, {char = "prancer01", text = "Yes mom."}
                    },
                    characters01 = {{name = "flight01"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "flight01",
                            text = "Do you want me to run through your script with you one more time?"
                        }, {
                            char = "prancer01",
                            text = "I've got it mom, I know my lines like the back of my hand."
                        },
                        {
                            char = "flight01",
                            text = "Good.  And remember not to go off script."
                        }, {
                            char = "flight01",
                            text = "I told your about that girl who changed the script?"
                        }
                    },
                    characters01 = {{name = "flight01"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "prancer01",
                            text = "Yes mother, only every day..."
                        },
                        {
                            char = "flight01",
                            text = "Her contract with BugFlix got cancelled."
                        }, {
                            char = "tara01",
                            text = "Who cares about BugFlix.  Prancer should just make her own show!"
                        },
                        {
                            char = "flight01",
                            text = "Tara... new subject please..."
                        }, {
                            char = "tara01",
                            text = "Um okay.  How come you and mom look exactly the same age?"
                        }
                    },
                    characters01 = {{name = "flight01"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "flight01",
                            text = "I was kinda wondering about that myself."
                        }, {
                            char = "prancer01",
                            text = "And hey, weren't you the helicopter pilot on that Mitzy Meow episode?"
                        }, {char = "prancer01", text = "You saw that one?"},
                        {
                            char = "prancer01",
                            text = "I've seen every one!  I love Mitzy Meow!"
                        }
                    },
                    characters01 = {{name = "flight01"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "empty",
                            text = "Uh guys.... we are still rolling."
                        }, {char = "tara01", text = "Oh whooops!  Hot mic!"},
                        {
                            char = "flight01",
                            text = "Troll, you can edit that out right?"
                        }, {char = "flight01", text = "Easy Peasy!"},
                        {
                            char = "prancer01",
                            text = "So anyways, bye guys, I'm off to do my show!"
                        }, {char = "tara01", text = "Good Luck!"}
                    },
                    characters01 = {{name = "flight01"}, {name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "empty"}}
                }
            }
        }, {
            name = "stump",
            frames = {
                {
                    dialogs = {
                        {char = "prancer01", text = "Hi Kid."},
                        {char = "prancer01", text = "Welcome to Troll Game."},
                        {char = "prancer01", text = "Do you like to read?"},
                        {char = "prancer01", text = "Oh goody! Me too!"}
                    },
                    characters01 = {{name = "prancer01"}},
                    characters02 = {{name = "greenKey"}}
                }, {
                    dialogs = {
                        {char = "prancer01", text = ""},
                        {char = "prancer01", text = "I am Prancer."},
                        {char = "prancer01", text = "And this is my friend..."},
                        {char = "prancer01", text = "...ah hem..."},
                        {char = "prancer01", text = "And THIS is my friend..."},
                        {char = "prancer01", text = "BRIIIIIIITTAAAAAAA!!!!"}
                    },
                    characters01 = {{name = "prancer01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "britta01", text = "Oh hey, am I late?"},
                        {char = "britta01", text = "I painted you this picture"},
                        {char = "britta01", text = "but I lost it..."}, {
                            char = "britta01",
                            text = "and then I found it... but then I lost it again..."
                        },
                        {
                            char = "britta01",
                            text = "...here you go... it's kind of smudged."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "prancer01",
                            text = "And today... we are going to be giving you a tour!"
                        }, {
                            char = "britta01",
                            text = "What?  The tour is today? Did you start without me?"
                        }, {char = "prancer01", text = "Yep.  ...and yes."},
                        {
                            char = "britta01",
                            text = "Ugggghhhhh!!!  Not today!!!!"
                        }, {
                            char = "prancer01",
                            text = "Britta's parents are making her do this tour because she got in trouble."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Indoor Sprinkler is a good idea!!!"
                        },
                        {
                            char = "britta01",
                            text = "Some people just aren't ready for it."
                        },
                        {
                            char = "britta01",
                            text = "Most people. ...in that supermarket anyways..."
                        },
                        {
                            char = "prancer01",
                            text = "So any way... welcome to Troll Game."
                        }, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Troll Game?  Are you kidding me?"
                        },
                        {
                            char = "prancer01",
                            text = "Yeah, that's actually the name of this game."
                        },
                        {
                            char = "britta01",
                            text = "This game is called \"Troll Game\"?"
                        }, {char = "britta01", text = "Really Matt?  Really?"}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "prancer01",
                            text = "I actually don't even get it."
                        }, {
                            char = "britta01",
                            text = "It's supposed to be some ironic self referential joke."
                        },
                        {char = "prancer01", text = "I guess it's kinda funny!"},
                        {
                            char = "britta01",
                            text = "Not it's not!  It's not even a teeny tiny bit funny."
                        }, {char = "prancer01", text = "What?"},
                        {
                            char = "britta01",
                            text = "Do not ever tell Matt something is funny."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "britta01", text = "That's rule number one."},
                        {char = "britta01", text = "It just encourages him."},
                        {
                            char = "prancer01",
                            text = "I thought \"never stand behind a donkey\" was rule number one..."
                        },
                        {
                            char = "britta01",
                            text = "That's number 2 now.  I changed it."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "prancer01",
                            text = "Well, aren't you just a perky little peanut today!"
                        }, {
                            char = "empty",
                            text = "Ha!  Wait, is that really in the script?  \"Perky little peanut\"?"
                        },
                        {char = "prancer01", text = "No, I just made it up."},
                        {
                            char = "britta01",
                            text = "Nice one!  That is hilarious!"
                        }, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }, {
            name = "doorGreen",
            frames = {
                {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Hey, can I take a look at your script?"
                        },
                        {
                            char = "prancer01",
                            text = "Ummm... ok... where's yours?"
                        },
                        {char = "britta01", text = "hmmm... how do I put this?"},
                        {
                            char = "britta01",
                            text = "I'm sort of going through a no script phase..."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "britta01", text = "What?!?"},
                        {
                            char = "prancer01",
                            text = "Scripts weren't bringing me joy."
                        },
                        {char = "britta01", text = "They let you free style???"},
                        {
                            char = "prancer01",
                            text = "...we are working something out..."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Well you sound like you are not a strict script follower either..."
                        },
                        {
                            char = "prancer01",
                            text = "I sprinkle in a some zip and zest."
                        }, {char = "britta01", text = "A little pizazz!"},
                        {char = "prancer01", text = "A little pep."},
                        {char = "britta01", text = "A little zipppity-zing!"}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Hey, you are good at free style!"
                        }, {char = "prancer01", text = "My mom hates it."},
                        {char = "britta01", text = "Ha!"},
                        {char = "prancer01", text = "Moms..."},
                        {char = "britta01", text = "I know, right?"},
                        {char = "prancer01", text = ""}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Hey. You want to go get into trouble?"
                        },
                        {char = "prancer01", text = "I though you'd never ask."},
                        {char = "prancer01", text = "But what about the kid?"},
                        {char = "britta01", text = "What kid?"}, {
                            char = "prancer01",
                            text = "The kid we are giving the tour to...  The kid reading this."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Oh my gosh! The kid! The kid!"
                        }, {char = "prancer01", text = "Talk to her..."},
                        {char = "britta01", text = "Ummm.. hi kid... <gulp>"}, {
                            char = "britta01",
                            text = "..heh ...heh. We were just kidding about going off script."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "prancer01", text = "We would never do that."},
                        {
                            char = "britta01",
                            text = "Not in a million bazillion years."
                        }, {char = "prancer01", text = "Is she buying it?"},
                        {char = "britta01", text = "Not at all..."}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "prancer01", text = "Let's just roll with it."},
                        {
                            char = "britta01",
                            text = "Is \"roll with it\" a people power skill?"
                        },
                        {
                            char = "prancer01",
                            text = "If it's not I'm adding it."
                        }
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "prancer01", text = "ah-hem..."},
                        {char = "britta01", text = "Oops, sorry!"},
                        {
                            char = "prancer01",
                            text = "So kid, saddle up and get ready for a wild ride!"
                        },
                        {char = "britta01", text = "She's making that face."},
                        {
                            char = "prancer01",
                            text = "And welcome to Troll Game!"
                        }, {char = "prancer01", text = ""},
                        {char = "britta01", text = ""},
                        {char = "prancer01", text = ""},
                        {char = "britta01", text = ""}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }, {
            name = "slide",
            frames = {
                {
                    dialogs = {
                        {char = "prancer01", text = "So show me."},
                        {char = "britta01", text = "Show you what?"},
                        {
                            char = "britta01",
                            text = "Britta, don't mess with me!"
                        }, {char = "britta01", text = "Just show me."},
                        {
                            char = "empty",
                            text = "I don't know what you are talking about..."
                        }, {
                            char = "empty",
                            text = "Britta, we've been talking about this all day for the last week."
                        }, {
                            char = "empty",
                            text = "Ok.. ok... say something funny.  Tell me a joke or something."
                        },
                        {
                            char = "empty",
                            text = "Baby shark doot-doot doot-doot doot-doot!"
                        }, {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {{name = "prancer01"}, {name = "britta01"}},
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "Aaaaaa!!!!"}, {
                            char = "empty",
                            text = "There's a creepy jellyfish where your mouth should be!"
                        }, {char = "empty", text = "Ha Ha! Very funny."},
                        {char = "empty", text = "So really, what do you think?"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "It's amazing!"},
                        {
                            char = "empty",
                            text = "I can't get my face to budge at all."
                        }, {char = "empty", text = "So what about the tour?"},
                        {
                            char = "empty",
                            text = "The tour! Oh no!  I forgot the tour!"
                        },
                        {
                            char = "empty",
                            text = "Make your face go normal again!"
                        }
                    },
                    characters01 = {
                        {name = "prancer01"}, {name = "britta02"},
                        {name = "britta03"}, {name = "britta04"}
                    },
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "Hi there kid!"},
                        {char = "empty", text = "Do you like to read?"},
                        {
                            char = "empty",
                            text = "You did this part already... <whispers loudly>"
                        }, {char = "empty", text = "Oh goody!"},
                        {char = "empty", text = "She's making that face..."},
                        {char = "empty", text = "Welcome to troll game!"}
                    },
                    characters01 = {
                        {name = "prancer01"}, {name = "britta02"},
                        {name = "britta03"}, {name = "britta04"}
                    },
                    characters02 = {{name = "empty"}}
                }, {
                    dialogs = {
                        {char = "empty", text = "Hi kid."},
                        {char = "empty", text = "Let's start all over again."},
                        {char = "empty", text = "Blank Slate."},
                        {char = "empty", text = "huh?"},
                        {char = "empty", text = "blank chalkboard."},
                        {char = "empty", text = "what?"},
                        {char = "empty", text = "blank piece of paper."},
                        {char = "empty", text = "Got it."},
                        {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "This is Britta!  Also know as CryBaby McWhineyFace."
                        }, {char = "empty", text = "Ha ha.  Very funny!"},
                        {
                            char = "empty",
                            text = "And the trolls are going to edit that out any ways."
                        },
                        {
                            char = "empty",
                            text = "Uggghhh!  Why do we have to do this tour?"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = "My name is britta."},
                        {char = "empty", text = "I'll give you a little bit a"},
                        {
                            char = "empty",
                            text = "spittle as I spit thick rhymes"
                        }, {char = "empty", text = "if you like mischief"},
                        {
                            char = "empty",
                            text = "We're the little kids you should stick with"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = "My name is ummm... prancer"},
                        {char = "empty", text = "Is that even a real name?"},
                        {char = "empty", text = "Wait? Don't answer."},
                        {char = "empty", text = ""},
                        {char = "empty", text = "It's a reindeer name."},
                        {
                            char = "empty",
                            text = "Kid, you're playing a weird game."
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "I saw an advance script where my name was raven"
                        },
                        {
                            char = "empty",
                            text = "But based on the way Matt's been behaving"
                        }, {
                            char = "empty",
                            text = "It might end up being Ziddyly Zim Diddly Bop McDavid."
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "I don't know if I can take another day or him."
                        }, {char = "empty", text = ""}, {
                            char = "empty",
                            text = "He's always jumping up and down, with his hands covered with jam, waving..."
                        },
                        {
                            char = "empty",
                            text = "I think he's just doing the Zam..."
                        },
                        {
                            char = "empty",
                            text = "I think the jam just flew in the fan."
                        }, {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {
                        {name = "prancer01"}, {name = "britta02"},
                        {name = "britta03"}, {name = "britta04"}
                    },
                    characters02 = {{name = "empty"}}
                }
            }
        }, {
            name = "bog02",
            frames = {
                {
                    dialogs = {
                        {char = "kat", text = "Hi kid."},
                        {char = "empty", text = "Are you still there kid?"},
                        {
                            char = "empty",
                            text = "Oh great, I think she's taking a nap."
                        }, {char = "empty", text = "Kid wake up!"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "Oh-no, oh-no oh-no!"}, {
                            char = "empty",
                            text = "If the kid goes to sleep, we will have to start all over."
                        }, {char = "empty", text = "Not again!"},
                        {char = "empty", text = "Quick say something funny..."},
                        {char = "empty", text = ""},
                        {char = "empty", text = "Goo Goo!"},
                        {char = "empty", text = "That is not funny!"},
                        {char = "empty", text = "Gaa!  Gaa!"},
                        {char = "empty", text = "That is not funny either!"},
                        {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "If the kid falls asleep, we won't get the bun!"
                        }, {char = "liz2", text = "So what?"},
                        {char = "empty", text = "We need to get the bun"},
                        {
                            char = "empty",
                            text = "so we can give it to the goat."
                        },
                        {
                            char = "empty",
                            text = "Oh joy...  I'm getting sleepy now too."
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "And then we give the hat to the cat"
                        },
                        {
                            char = "empty",
                            text = "Yawn... Wake me up when there's a song or something."
                        },
                        {
                            char = "empty",
                            text = "So we can get the ring of Andakar."
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "Wait, what was that last part?"
                        },
                        {char = "empty", text = "It says the Ring of Andakar."},
                        {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "Remember we went on that field trip to Elf Land?"
                        }, {
                            char = "empty",
                            text = "And me and you snuck off into the train tunnel and sang songs with those trolls?"
                        },
                        {
                            char = "empty",
                            text = "Um. No, I don't remember, because that wasn't me."
                        },
                        {
                            char = "empty",
                            text = "Remember? I thought it was a terrible idea."
                        }, {char = "empty", text = "So you went with Barbara."},
                        {
                            char = "empty",
                            text = "And she got sucked into that space-time vortex, and now she's a goblin princess in Dinosaur Valley?"
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "No more hare brained ideas for me."
                        }, {
                            char = "empty",
                            text = "I'm going to follow the rules, work on my smile and try to get on that Bugflix show."
                        }, {
                            char = "empty",
                            text = "Why don't you just make your own show, like baby troll did?"
                        }, {char = "empty", text = "How did he get his show?"},
                        {char = "empty", text = "He just had a cool song."},
                        {
                            char = "empty",
                            text = "Where are we going to get a cool song?"
                        },
                        {
                            char = "empty",
                            text = "Easy Peasy.  We just go to the dump."
                        }, {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "What is that?  A balloon just landed on the grass!"
                        }, {
                            char = "empty",
                            text = "A balloon?  That's it.  We don't go through Mount Dracmore, we go over it!"
                        }, {char = "empty", text = "You are officially nuts!"},
                        {
                            char = "empty",
                            text = "You can't go over mount dracmore in a balloon."
                        }
                    },
                    characters01 = {
                        {name = "raven001"}, {name = "raven004"},
                        {name = "prancer01"}
                    },
                    characters02 = {
                        {name = "britta02"}, {name = "britta04"},
                        {name = "britta01"}, {name = "empty"}, {name = "empty"}
                    }
                }, {
                    dialogs = {
                        {
                            char = "prancer01",
                            text = "Balloons dont have a steering wheel!  They just drift!"
                        },
                        {
                            char = "prancer01",
                            text = "You will crash land in Troll Valley!"
                        }, {
                            char = "britta04",
                            text = "Raven, Sparkle the Unicorn is out there some where..."
                        }, {char = "britta04", text = "The song said so!"},
                        {
                            char = "prancer01",
                            text = "Britta!  You can't even swim!"
                        },
                        {
                            char = "britta04",
                            text = "Well then, I'll need to learn."
                        },
                        {
                            char = "prancer01",
                            text = "Britta... ...your... ...your face!"
                        },
                        {char = "britta04", text = "What?  What about my face?"},
                        {char = "prancer01", text = "You are smiling!"},
                        {
                            char = "prancer01",
                            text = "I've... I've never seen you do that before..."
                        }, {char = "empty", text = ""}
                    },
                    characters01 = {{name = "prancer01"}},
                    characters02 = {
                        {name = "britta04"}, {name = "balloon01"},
                        {name = "empty"}
                    }
                }, {
                    dialogs = {
                        {char = "empty", text = ""}, {
                            char = "empty",
                            text = "Remember how I said I met that troll, when I was 6 in the apple orchards?"
                        }, {
                            char = "empty",
                            text = "Um, hello, you mention that in like every episode now."
                        }, {char = "empty", text = ""}, {
                            char = "empty",
                            text = "He told me that if I ever wanted to get into the caves, there is a secret way in."
                        }, {char = "empty", text = "This sounds totally safe."},
                        {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "Well then, I'm going without you."
                        },
                        {
                            char = "empty",
                            text = "What? Have you lost your mind?"
                        }, {char = "empty", text = "Get out of that balloon!"},
                        {char = "empty", text = ""}, {
                            char = "empty",
                            text = "Yeah, if there are old stories in that dump, maybe I can learn what my back story is, and where my parents are."
                        }, {char = "empty", text = "And who I am..."},
                        {
                            char = "empty",
                            text = "OMG, hello?  You can have my parents."
                        },
                        {
                            char = "empty",
                            text = "You want my little sister too?"
                        },
                        {
                            char = "empty",
                            text = "Spoiler= parents are way over rated."
                        }, {char = "empty", text = ""}, {
                            char = "empty",
                            text = "What?  You can't go on that absolutely insane mission!"
                        }, {char = "empty", text = "Are you out of your mind?"},
                        {
                            char = "empty",
                            text = "I was the one who thought of the idea.  You can't just go all by yourself!"
                        },
                        {char = "empty", text = "What if there are monsters?"},
                        {char = "empty", text = "What if there are hard words?"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "I'm not going alone."},
                        {char = "empty", text = "Who are you going with?"},
                        {char = "empty", text = "I'm going with the kid."},
                        {
                            char = "empty",
                            text = "The kid?  What are you talking about?"
                        }, {char = "empty", text = "What kid?"},
                        {char = "empty", text = ""},
                        {
                            char = "empty",
                            text = "The kid reading this.  Remember?  The tour?"
                        },
                        {
                            char = "empty",
                            text = "Holy mother monkey milk! The tour!"
                        }, {char = "empty", text = "I forgot about the kid!"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "This kid?!?"},
                        {
                            char = "empty",
                            text = "You think this kid will get you to Zandakar Valley?"
                        }, {char = "empty", text = "She's half asleep."}, {
                            char = "empty",
                            text = "I think I see some drool dripping out of the corner of her mouth!"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = "Hey kid!"},
                        {char = "empty", text = "Yeah you kid!"},
                        {char = "empty", text = "Do you like sparkles?"},
                        {char = "empty", text = "Glittering Jewels?"},
                        {char = "empty", text = "Trophies, and badges"},
                        {
                            char = "empty",
                            text = "gold beyond your wildest dreams?"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = ""}, {char = "empty", text = ""}
                    },
                    characters01 = {
                        {name = "raven001"}, {name = "raven004"},
                        {name = "prancer01"}
                    },
                    characters02 = {
                        {name = "britta02"}, {name = "britta04"},
                        {name = "britta01"}, {name = "empty"}, {name = "empty"}
                    }
                }
            }
        }, {
            name = "log",
            frames = {
                {
                    dialogs = {
                        {
                            char = "britta01",
                            text = "Come with me kid, on a quest to Mount Dracmore!"
                        },
                        {
                            char = "raven001",
                            text = "Come with me! We can see the bee in the tree!"
                        }, {char = "raven001", text = ""},
                        {char = "empty", text = ""}
                    },
                    characters01 = {{name = "raven001"}},
                    characters02 = {{name = "britta01"}}
                }
            }
        }, {
            name = "tree01",
            frames = {
                {
                    dialogs = {
                        {char = "prancer01", text = "oh no, oh no , oh no!"}, {
                            char = "liz2",
                            text = "My best friend just flew off in a balloon to Mount Dracmore to try to find a lost unicorn!"
                        }, {char = "empty", text = "This is not good."},
                        {char = "tara01", text = "What?"},
                        {
                            char = "empty",
                            text = "Oh no, tara, did you hear that?"
                        }, {char = "empty", text = "Wow, let's go with her!"},
                        {char = "empty", text = "Have you lost your marbles?"},
                        {char = "empty", text = "That's too dangerous!"},
                        {char = "empty", text = ""},
                        {char = "empty", text = ""},
                        {char = "empty", text = "bugflix called."},
                        {char = "empty", text = "They did?"},
                        {
                            char = "empty",
                            text = "Yeah, they gave the part to one of the trolls."
                        }, {char = "empty", text = "That was my part!"},
                        {
                            char = "empty",
                            text = "I have been practicing my lines for a year!"
                        },
                        {
                            char = "empty",
                            text = "They said you didn't have the fire in your belly."
                        }, {char = "empty", text = "They said troll03 did."},
                        {char = "empty", text = "There is a troll03?"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "That is preposterous!"},
                        {
                            char = "empty",
                            text = "I don't have fire in my belly?"
                        }, {
                            char = "empty",
                            text = "I spent every saturday for the past month practicing my lines."
                        },
                        {
                            char = "empty",
                            text = "And working on this stupid, chipmunk smiley face."
                        }, {char = "empty", text = "I've had it."}, {
                            char = "empty",
                            text = "They want to see fire in my belly.  I'll show them fire in my belly!"
                        }, {char = "empty", text = ""},
                        {char = "empty", text = "Keep this script."},
                        {char = "empty", text = "<tears up script>"},
                        {
                            char = "empty",
                            text = "I am going to do what I should have done years ago."
                        }, {char = "empty", text = "Britta was right."},
                        {
                            char = "empty",
                            text = "I'm not going to give this helicopter to Lucinda."
                        },
                        {
                            char = "empty",
                            text = "I'm taking it to Troll Valley."
                        },
                        {
                            char = "empty",
                            text = "And I'm going to win that rap battle!"
                        }, {char = "empty", text = ""}, {
                            char = "empty",
                            text = "You don't know how to drive a van!  And it's all down hill and you have no brakes!"
                        }, {char = "empty", text = "Raven, your face!!!"},
                        {char = "empty", text = ""},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {{name = "prancer01"}},
                    characters02 = {{name = "tara01"}, {name = "van"}}
                }
            }
        }, {
            name = "van",
            frames = {
                {
                    dialogs = {
                        {char = "kat", text = ""},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "liz2", text = ""},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"},
                        {char = "empty", text = "-----------"}
                    },
                    characters01 = {{name = "raven001"}},
                    characters02 = {{name = "empty"}}
                }
            }
        }
    }, {
        {
            name = "bubbleGirl01",
            frames = {
                {
                    dialogs = {
                        {
                            char = "kat",
                            text = "Hi Kat!  Do you think it's gonna rain, dear?"
                        }, {char = "kat", text = "Get it, rain deer?"}, {
                            char = "liz2",
                            text = "Nope.  I think it's just going to rain cats and DOMStringList"
                        }, {char = "kat", text = "Ummmm... what?"}, {
                            char = "liz2",
                            text = "I said= I think it's just going to rain cats and dogs."
                        }, {char = "kat", text = "You didn't say dogs..."},
                        {
                            char = "kat",
                            text = "You said= cats and DOMStringList."
                        }, {char = "liz2", text = "DOMStringList?"},
                        {char = "liz2", text = "I did?  Oh my gosh!"},
                        {char = "liz2", text = "That's so embarrasing...."},
                        {
                            char = "liz2",
                            text = "That just happends to me some times."
                        }, {char = "kat", text = "Like a hiccup?."}
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "queenZupula01"}, {name = "crow01"}}
                }
            }
        }, {
            name = "pup01",
            frames = {
                {
                    dialogs = {
                        {
                            char = "liz2",
                            text = "Yes. My doctor said it's some kind of autocomplete thing."
                        },
                        {
                            char = "kat",
                            text = "Oh brother... doctors say that about everything."
                        },
                        {
                            char = "kat",
                            text = "Did she say what a DOMStringList is?"
                        },
                        {
                            char = "liz2",
                            text = "No.  But it sounds like some kind of robot talk."
                        }, {
                            char = "kat",
                            text = "C3PO, take this DOMStringList to Princess Leah.  You are my only hope."
                        },
                        {
                            char = "liz2",
                            text = "R2D2!  What in the world has gotten into you?"
                        },
                        {
                            char = "kat",
                            text = "Beep Boop! Beep Boop! DOMStringList."
                        }, {char = "liz2", text = "Princess who?"},
                        {
                            char = "liz2",
                            text = "No I will not go with you to planet Hoth!"
                        },
                        {
                            char = "kat",
                            text = "Beep Boop! Beep Boop! Wheeeeeeee!"
                        },
                        {
                            char = "liz2",
                            text = "R2D2!  You need to get your disk drive cleaned!"
                        }
                    },
                    characters01 = {{name = "kat"}, {name = "liz2"}},
                    characters02 = {{name = "queenZupula01"}, {name = "crow01"}}
                }
            }
        }
    }
}

return module
