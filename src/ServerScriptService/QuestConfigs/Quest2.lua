local module = {}

module.quest = {
    {
        name = "bog",
        frames = {
            {
                dialogs = {
                    {char = "liz2", text = "It's not fair!"},
                    {char = "kat", text = "What's not fair?"},
                    {char = "liz2", text = "Nothing is fair!"},
                    {
                        char = "kat",
                        text = "Oh dear! You poor thing...  Wait hold on..."
                    }
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }, {
                dialogs = {
                    {char = "liz2", text = "What are you doing?"},
                    {char = "kat", text = "Just a sec liz.  I'm making a call."},
                    {
                        char = "liz2",
                        text = "Kat, that's not a phone, it's a piece of bark that you just picked up off the ground."
                    }
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }, {
                dialogs = {
                    {
                        char = "kat",
                        text = "Beep boop beep boop beep beep boop..."
                    },
                    {
                        char = "kat",
                        text = "Hello, operator, please send over the wha-mulance!"
                    }, {char = "kat", text = "Yes it's Liz again."}
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }
        }
    }, {
        name = "swing",
        frames = {
            {
                dialogs = {
                    {char = "kat", text = "Yes I'll hold."}, {
                        char = "kat",
                        text = "No I don't want to participate in a short survey after the call."
                    }, {
                        char = "kat",
                        text = "What? Oh great!  Liz, they are sending the Wham-bulance over immediately."
                    },
                    {
                        char = "kat",
                        text = "Oh what's that?  You have a message for liz?"
                    }
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }, {
                dialogs = {
                    {
                        char = "Kat",
                        text = "Liz, the wha-mbulance people have a message for you!"
                    }, {char = "liz2", text = "Kat you are not funny!"},
                    {char = "kat", text = "Whats that?  Tell her to turn six?"},
                    {
                        char = "kat",
                        text = "Oh what? And also stop being a bad frog?"
                    }, {
                        char = "kat",
                        text = "Yeah I'll pass that along to her and see what she says."
                    }
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }
        }
    }, {
        name = "stump",
        frames = {
            {
                dialogs = {
                    {char = "kat", text = "You have a good day too."},
                    {char = "kat", text = "Mmmm-bye"},
                    {char = "kat", text = "Waaa-wer! Waaa-wer!"},
                    {
                        char = "kat",
                        text = "Liz, I just got off the phone with --"
                    }
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }, {
                dialogs = {
                    {char = "liz2", text = "STOP IT!"},
                    {char = "liz2", text = "Kat, you are a BAD FROG!!!"},
                    {char = "liz2", text = "BAD FROGGY!!!"}
                },
                characters01 = {{name = "kat"}, {name = "liz2"}},
                characters02 = {}
            }
        }
    }
}

return module
