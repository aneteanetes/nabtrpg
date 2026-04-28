nab = {
    attr = {
        con='Телосложение',
        dex='Сноровка',
        int='Интеллект',
        wis='Мудрость'
    },
    stats = {
        hp="Стойкость"
    },
    classes={
        warrior = {
            name='Воин',
            desc='Может использовать 1 Очко Воли чтобы добавить кость любой своей характеристики в пулл броска. Количество добавленных костей может быть неограничено. Воины сосредоточены на прямолинейном и надёжном результате.',
            willuse='Добавить кость в пулл.'
        },
        rogue = {
            name='Плут',
            desc='Может потратить 1 Очко Воли чтобы добавить к броску пула ещё один результат. Количество добавленных результатов ограничено только пулом. Плут самый азартный класс, часто ему требуется найти нестандартный подход для использования своих способностей на максимум.',
            willuse='Добавить результат из пулла.'
        },
        mage = {
            name='Маг',
            desc='Может используя 1 Очко Воли увеличить ранг кости перед броском пула. Можно увеличивать ранг вплоть до d12, но только на тех костях, которые есть в пулле изначально. Маги подходят тем игрокам, кто хочет почувствовать себя могущественными персонажами без гарантированного результата.',
            willuse='Увеличить ранг кости пулла.'
        },
        priest = {
            name='Жрец',
            desc='Может потратить 1 Очко Воли чтобы создать кость сцены d4. Максимальное количество костей не ограничено. Жрецы сосредоточены на помощи всей партии, они обладают большим контролем над ситуацией чем остальные классы.',
            willuse='Добавить кость сцены.'
        }
    },
    health ={
        low = '1/12'
    },
    dice={
        d4='d4',
        d6='d6',
        d8='d8',
        d10='d10',
        d12='d12'
    },
    skills={
        endurance={
            stat= 'con',
            name='Выносливость',
            desc = 'Способность закалять организм против физического воздействия - пыток, холода, ядов, итд.',
            value=0
        },
        survival={
            stat= 'con',
            name='Выживание',
            desc='Ориентирование, охота, навигация в дикой местности, природа',
            value=0
        },
        conviction={
            stat= 'con',
            name='Убеждение',
            desc='Харизма, дипломатия, обольщение, этикет',
            value=0
        },
        craft={
            stat= 'con',
            name='Ремесло',
            desc='Все виды тяжёлого производного труда',
            value=0
        },
        medicine={
            stat= 'con',
            name='Медицина',
            desc='Исцеление, анатомия, первая помощь, практическое латание тел, знание плоти',
            value=0
        },
        vehicle={
            stat= 'con',
            name='Транспорт',
            desc='Физическое управление механизмами: повозками, кораблями, дирижаблями, повозками',
            value=0
        },
        athletics={
            stat= 'dex',
            name='Атлетика',
            desc='Бег, плавание, лазание, прыжки, напор, эквилибристика, изворотливость, полет, грация',
            value=0
        },
        hide={
            stat= 'dex',
            name='Скрытность',
            desc='Маскировка, бесшумное передвижение, засады',
            value=0
        },
        thievery={
            stat= 'dex',
            name='Ловкость рук',
            desc='Кража, взлом, грязные трюки, воровство',
            value=0
        },
        deception={
            stat= 'dex',
            name='Обман',
            desc='Блеф, притворство, мимика, ложь лицом и телом',
            value=0
        },
        taming={
            stat= 'dex',
            name='Обращение с животными',
            desc='Верховая езда, дрессировка, уход',
            value=0
        },
        performance={
            stat= 'dex',
            name='Выступление',
            desc='Танцы, игра на инструментах — моторика, музыка, игра, хореография',
            value=0
        },
        analysis={
            stat= 'int',
            name='Анализ',
            desc='Криминалистика, поиск улик, дедукция, расследование',
            value=0
        },
        engineering={
            stat= 'int',
            name='Инженерия',
            desc='Ремонт, механизмы, строительство зданий, чертежи',
            value=0
        },
        magic={
            stat= 'int',
            name='Магия',
            desc='Теория, оккультизм, использование магических устройств, настройка',
            value=0
        },
        history={
            stat= 'int',
            name='История',
            desc='Обществоведение, знание дворянства, география, общая история',
            value=0
        },
        education={
            stat= 'int',
            name='Образование',
            desc='Профессия, административные навыки, любой квалифицированный труд на заработок',
            value=0
        },
        attentiveness={
            stat= 'int',
            name='Внимательность',
            desc='Восприятие, поиск, подмечание деталей',
            value=0
        },
        religion={
            stat= 'wis',
            name='Религия',
            desc='История богов, молитвы, ритуалы',
            value=0
        },
        trade={
            stat= 'wis',
            name='Торговля',
            desc='Реклама, связи, логистика, торг, оценка стоимости, гильдии',
            value=0
        },
        contacts={
            stat= 'wis',
            name='Связи',
            desc='Способность добывать сплетни, слухи, неожиданные знакомства',
            value=0
        },
        intimidation={
            stat= 'wis',
            name='Запугивание',
            desc='Устрашение, насмешка, ментальное давление, допросы',
            value=0
        },
        insight={
            stat= 'wis',
            name='Проницательность',
            desc='Интуиция, психология, чтение лжи',
            value=0
        },
        warcraft={
            stat= 'wis',
            name='Военное ремесло',
            desc='Военные формирования, тактика, стратегия, звания, устройство стражи',
            value=0
        },
    },
    talents={
        fortitude={
            name='Крепость',
            desc="Вы активируете карты болезней и проклятий в конце сцены, не важно получили вы их в бою или нет. Все болезни и проклятья активируются мгновенно.",
            icon='ra-muscle-fat'
        },
        sense = {
            name = 'Шестое чувство',
            desc = 'Вы можете один раз в локации попросить у мастера подсказку о том, что нужно делать чтобы продвинуться по сюжету.',
            icon='ra-explosion'
        },
        desire = {
            name = 'Компас желаний',
            desc = 'Вы определяете одно желание на каждую сессию. Вы всегда знаете в каком направлении искать то, чего желаете.',
            icon='ra-explosion'
        },
        languages = {
            name = 'Лингвист',
            desc = 'Вы понимаете чужеродные языки и можете быстро обучиться им. Вы научились понимать намерения, а не слова, и это позволяет вам используя жесты и интонации договориваться даже с теми существами, у которого вообще нет языка (но есть разум - монстр, животное, механизм).',
            icon='ra-explosion'
        },
        lips = {
            name = 'Чтение по губам',
            desc = 'Вы умеете читать по губам, в том числе на большом расстоянии.',
            icon='ra-explosion'
        },
        etiquet = {
            name = 'Этикет',
            desc = 'Вы знаете правила этикета всех социальных групп. Это добавляет вам d4 к любым проверкам если вы находитесь в социальной группе вышего звена.',
            icon='ra-explosion'
        },
        noble = {
            name = 'Благородное происхождение',
            desc = 'Вы принадлежите дворянскому роду и можете производить впечатление на крестьян и простолюдинов. Вам на 2d4 проще договариваться со стражей и любыми другими простолюдинами.',
            icon='ra-explosion'
        },
        blindness = {
            name = 'Слепота',
            desc = 'Вы ослепли. Это позволяет вам ориентироваться в темноте и тумане и сражаться против невидимых существ без помех. У вас обострённый слух, нюх, и вкус, однако вы не способны видеть.',
            icon='ra-explosion'
        },
        twohand = {
            name = 'Бой двумя руками',
            desc = 'Вы можете эффективно использовать оружие в двух руках и добавлять кость второго оружия к атаке.',
            icon='ra-explosion'
        },
        chance = {
            name = 'Последний шанс',
            desc = 'Вы можете совершить одно действие при получении урона который уменьшает здоровье до нуля.',
            icon='ra-explosion'
        },
        elemental = {
            name = 'Стихийное происхождение',
            desc = 'Вы можете изменить любой исходящий урон на выбранный вами природный элемент. Враги с противоположным элементом получают преимущество d4 против вас.',
            icon='ra-explosion'
        },
        livingshield = {
            name = 'Живой щит',
            desc = 'Вы получаете урон вместо союзников если они находятся с вами в одной зоне. Вы не можете отключить это.',
            icon='ra-explosion'
        },
        memory = {
            name = 'Фотографическая память',
            desc = 'Вы можете идеально воспроизвести в памяти увиденную карту, документ или лицо спустя любое время.',
            icon='ra-explosion'
        },
        deadspeak = {
            name = 'Общение с духами',
            desc = 'Вы можете призывать духи мёртвых и общаться с ними.',
            icon='ra-explosion'
        },
        improvisation = {
            name = 'Импровизация',
            desc = 'Вы можете импровизировать и использовать предметы как вам вздумается. Любой предмет в ваших руках может превратиться в оружие с костью рангом на одну меньше чем оригинальная, либо инструментом с таким же пониженным рангом. (прим.: ножка стула может использоваться как дробящее d4 (d6-1ранг))',
            icon='ra-explosion'
        },
        sleepfast = {
            name = 'Быстрый сон',
            desc = 'Вам достаточно 2х часов на долгий отдых. Остальные 6 часов вы можете использовать для любых занятий. Вы не можете видеть сны.',
            icon='ra-explosion'
        },
        eatall = {
            name = 'Всеядность',
            desc = 'Вы можете есть всё что угодно для утоления голода и восстановления. Такие приёмы пищи восстанавливают половину здоровья, не тратят провиант, позволяют есть всё, что могут перемолоть зубы.',
            icon='ra-explosion'
        },
        lucky = {
            name = 'Счастливчик',
            desc = 'Вы можете использовать бросок удачи в бою или для проверок *известных* вам навыков. Результат рассчитывается по формуле Успех=d100<=Удача. Значением броска считаеся кость единиц: 0/0 - провал, X/0 - 10, X/Y - результат Y.',
            icon='ra-explosion'
        },
        evasion = {
            name = 'Увёртливость',
            desc = 'Каждый раз после получения урона вы можете по желанию переместиться в соседнюю зону.',
            icon='ra-explosion'
        },
        commander = {
            name = 'Командир',
            desc = 'Вы можете отдать свой ход другому члену отряда.',
            icon='ra-explosion'
        },
        inventory = {
            name = 'Волшебные сумки',
            desc = 'Вы использовать любой предмет из сумок членов вашего отряда.',
            icon='ra-explosion'
        },
        ironwill = {
            name = 'Железная воля',
            desc = 'Вы получаете очко Воли каждый раз когда проваливаете бросок (не только при критическом провале), но не можете обладать более чем 1.',
            icon='ra-explosion'
        },
        preparation = {
            name = 'Подготовка',
            desc = 'Вы можете подготовиться к посещению локации заранее, создав кость сцены из материалов. Подготовка доступна только если локация известна заранее, у вас есть не менее 6ч, вы обладаете всеми требуемыми материалами или можете их приобрести за эти 6 часов.',
            icon='ra-explosion'
        },
        pet = {
            name = 'Питомец',
            desc = 'Вы можете завести себе магического питомца - существо слабого ранга. Самая высокая характеристика питомца добавляет вам кость d4 в пулл атрибутов. Питомец получает урон от массовых атак и восстанавливается после долгого отдыха.',
            icon='ra-explosion'
        },
        honor = {
            name = 'Честь',
            desc = 'При помощи вы всегда даёте кость на 1 ранг выше чем ваша. При максимальном ранге вы даёте d12+d4. Вы не можете отказать в помощи. Если вы не способны помочь при броске, вы получаете штраф -10 к результату следующего броска.',
            icon='ra-explosion'
        },
        shootclose = {
            name = 'Мастер стрельбы',
            desc = 'Все ваши дистанционные физические атаки могут быть использованы в упор, вы можете стрелять за угол и попадать в цели за препятствиями если снаряд может отрекошетить. Не работает с огнестрельным оружием.',
            icon='ra-explosion'
        },
        junker = {
            name = 'Барахольщик',
            desc = 'Один раз на локации можете найти в своих бездонных карманах преимущество d4. Вы не тратите на это очки Воли, но вы не можете использовать предметы во второй руке.',
            icon='ra-explosion'
        },
        bloodoath = {
            name = 'Кровавая клятва',
            desc = 'Вы используете Здоровье в качестве очков Воли с курсом 3к1 (3 ОЗ на 1 действие). При получении очков Воли вы получаете урон. ',
            icon='ra-explosion'
        },
        loser = {
            name = 'Неудачник',
            desc = 'Ваши критические провалы считаются обычными успехами. Вы не получаете за них очки Воли.',
            icon='ra-explosion'
        },
        lastcall = {
            name = 'Последний рывок',
            desc = 'Вы можете потратить всё здоровье на автоматический успех. Это действие считается атакой по вам приводящей здоровье к нулю.',
            icon='ra-explosion'
        },
        manipulation = {
            name = 'Манипулятор',
            desc = 'Вы можете использовать очки Воли союзников, но только если убедите их в этом (бросок Убеждения против 2d12).',
            icon='ra-explosion'
        },
        cursed = {
            name = 'Проклятый',
            desc = 'Вас прокляли. Весь пулл бросков против вас всегда увеличен на d4. Вы можете носить проклятые предметы без штрафов.',
            icon='ra-explosion'
        },
        undead = {
            name = 'Смертельный договор',
            desc = 'Вы умираете (спонтанное самовозгорание), но смерть предлагает вам сделку: лечение и божественная магия отныне наносят вам урон. Вы исцеляетесь на 1 ед. каждый раз когда рядом кто-то умирает, или на вас накладывают болезнь/яд. Вы не стареете, но это приключение последнее в вашей жизни.',
            icon='ra-explosion'
        },
        practice = {
            name = 'Библиотечные знания',
            desc = 'Вы больше не можете помогать и сами делать проверки навыков против пула сложности, но получаете бонус 2d4 против статической сложности.',
            icon='ra-explosion'
        },
        homescape = {
            name = 'Родные края',
            desc = 'Вы выбираете свой *родной* ландшафт в котором получаете кость сцены d4. В остальных местах вы получаете штраф против вас d4.',
            icon='ra-explosion'
        },
        organization = {
            name = 'Орден смерти',
            desc = 'Вы вступаете в орден смерти. Когда ваше здоровье достигает 0 вы совершаете саморитуал, и в следующем ходу орден присылает на ваше место нового персонажа. Этот персонаж идентичен вашему но с другим именем и полным здоровьем. Весь накопленный опыт сгорает. Труп предыдущего персонажа остаётся.',
            icon='ra-explosion'
        },
        hipster = {
            name = 'Стиляга',
            desc = 'Вы носите только вещи, созданные на заказ или вами. Если все предметы вашей экипировки созданы на заказ вы уменьшаете Восстановление на 1ед.',
            icon='ra-explosion'
        },
        scars = {
            name = 'Шрамирование',
            desc = 'Травмы не снижают ранг характеристики, но вы больше не можете их исцелять.',
            icon='ra-explosion'
        },
        synesthesia = {
            name = 'Синестезия',
            desc = 'Вы можете обменять две кости характеристики при проверках навыков. Синестезия выбирается единожды и не может быть изменена.',
            icon='ra-explosion'
        },
        naming = {
            name = 'Магия имён',
            desc = 'Вы можете провести ритуал занимающий 6ч на определение истинного имени существа - для этого вам потребуется какой-либо предмет существа. Это даёт вам d4 к проверкам Убеждения, Выступления, Запугивания, Проницательности, и всех остальных проверок общения против этого существа пока вы не сообщите существу его имя. Существо знающее своё истинное имя на всегда будет благоволить вам. Одновременно вы можете держать в уме только одно истинное имя.',
            icon='ra-explosion'
        },
    },
    specs ={
        warrior = {
            valkyr = {
                name = 'Валькирия',
                desc = 'Весь урон от персонажа считается уроном от холода. Персонажу доступны способности валькирий.',
                icon = 'ra-all-for-one'
            },
            alchemist = {
                name = 'Алхимик',
                desc = 'Персонаж может единоразово добавлять кость зелья к проверке навыка или атаки.',
                icon = 'ra-all-for-one'
            }
        },
        rogue = {
            voodo = {
                name = 'Мастер Вуду',
                desc = 'Персонаж может использовать травы как яды и проводить особенные ритуалы.',
                icon = 'ra-all-for-one'
            },
            lightning = {
                name = 'Мастер молний',
                desc = 'Персонаж не получает урона от молний, вместо этого он получает дополнительный ход вне очереди.',
                icon = 'ra-all-for-one'
            }
        },
        mage = {
            warlock = {
                name = 'Чернокнижник',
                desc = 'Весь урон способностей делится поровну между огнём и тёмной магией.',
                icon = 'ra-all-for-one'
            },
            bloodmagic = {
                name = 'Маг крови',
                desc = 'Персонаж может манипулировать кровью. Такие способности проходят проверку навыка "Магия".',
                icon = 'ra-all-for-one'
            }
        },
        priest = {
            disciple = {
                name = 'Апостол',
                desc = 'Жрец посвящает себя только одному божеству. Это позволяет добавить кость d12 к проверкам способностей выбранного божества.',
                icon = 'ra-all-for-one'
            },
            inquisitor = {
                name = 'Инквизитор',
                desc = 'Жрец получает двух пленных существ божественной и демонической природы на выбор. Он может использовать способности этих существ вместо своих.',
                icon = 'ra-all-for-one'
            }
        }
    },
    locations = {
        {
            name='Конгрегация',
            desc='',
            icon='ra-mountains',
            ali={
                name='Удар зимы',
                desc='Вы наносите 1 урона от холода.',
                icon='ra-wyvern'
            },
            race={
                name='Эсмару',
                translate='Блестящие'
            }
        },
        {
            name='Изначальная роща',
            desc='',
            icon='ra-mountains',
            ali={
                name='Дубовая кожа',
                desc='Ваша броня увеличена на 1. Вы не получаете штраф восстановления за эту способность.',
                icon='ra-wyvern'
            },
            race={
                name='Балату',
                translate='Народ Хаоса'
            }
        },
        {
            name='Бухта пустоты',
            desc='',
            icon='ra-mountains',
            ali={
                name='Болезненный вид',
                desc='Весь получаемый урон от болезней и ядов уменьшен на 2.',
                icon='ra-wyvern'
            },
            race={
                name='Серые',
                translate='Живые'
            }
        },
        {
            name='Кровавые болота',
            desc='',
            icon='ra-mountains',
            ali={
                name='Жестокий удар',
                desc='Вы наносите 2 урона и накладываете *кровотечение* на 2 раунда.',
                icon='ra-wyvern'
            },
            race={
                name='Мату',
                translate='Кровь'
            }
        },
        {
            name='Империя Ушал',
            desc='',
            icon='ra-mountains',
            ali={
                name='Магический талант',
                desc='Все ваши магические способности наносят на 1 урона больше.',
                icon='ra-wyvern'
            },
            race={
                name='Усапу',
                translate='Народ Нефрита'
            }
        },
        {
            name='Королевство проклятых',
            desc='',
            icon='ra-mountains',
            ali={
                name='Дикая магия',
                desc='Если вас атаковали в этом раунде вы можете нанести этой способностью 3 урона атакующему.',
                icon='ra-wyvern'
            },
            race={
                name='Нахазу',
                translate='Демоны'
            }
        },
        {
            name='Остров дильмун',
            desc='',
            icon='ra-mountains',
            ali={
                name='Целебные воды',
                desc='Вы можете восстановить 1 стойкость двум целям.',
                icon='ra-wyvern'
            },
            race={
                name='Муиту',
                translate='Островитяне'
            }
        },
        {
            name='Кузница древних',
            desc='',
            icon='ra-mountains',
            ali={
                name='Удар титанов',
                desc='Вы можете нанести цели 1 урона, оглушить, и наложить ожог.',
                icon='ra-wyvern'
            },
            race={
                name='Карару',
                translate='Огненные'
            }
        },
        {
            name='Экзархат солнца',
            desc='',
            icon='ra-mountains',
            ali={
                name='Святая стрела',
                desc='Вы можете нанести 1 урона любой цели на поле боя на любом расстоянии. Цель получает урон даже в укрытии.',
                icon='ra-wyvern'
            },
            race={
                name='Шамшу',
                translate='Позолоченные'
            }
        },
        {
            name='Берег древних',
            desc='',
            icon='ra-mountains',
            ali={
                name='Гниение души',
                desc='Вы накладываете на цель *гниение души*. При 3 эффектах цель наносит себе и соседним целям 2 урона без проверки попадания.',
                icon='ra-wyvern'
            },
            race={
                name='Шалму',
                translate='Тёмная плоть'
            }
        },
        {
            name='Тёмный лес',
            desc='',
            icon='ra-mountains',
            ali={
                name='Учение луны',
                desc='Вы можете изменить свой облик на любое животное проживающее в текущем регионе.',
                icon='ra-wyvern'
            },
            race={
                name='Хабаш',
                translate='Кусачие'
            }
        },
        {
            name='Пески мёртвых',
            desc='',
            icon='ra-mountains',
            ali={
                name='Видения смерти',
                desc='Вы можете наслать на цель видения бога смерти - она пропустит свой следующий ход. Работает один раз за сцену на цель.',
                icon='ra-wyvern'
            },
            race={
                name='Буру',
                translate='Дети глины'
            }
        }
    },
    fractions = {
        vanguard = {
            name = "Авангард",
            desc = "",
            icon = 'ra-level-three'
        },
        magecircle = {
            name = "Круг магов",
            desc = "",
            icon = 'ra-level-three'
        },
        theguild = {
            name = "Гильдия",
            desc = "",
            icon = 'ra-level-three'
        },
        sunchurch = {
            name = "Церковь Солнца",
            desc = "",
            icon = 'ra-level-three'
        },
        dethcult = {
            name = "Культ смерти",
            desc = "",
            icon = 'ra-level-three'
        }
    }
}

function fracsArray()
    local str = '';
    for key, value in pairs(nab.fractions) do
        str = str..'"'..value.name..'",';
    end
    return str;
end

function locationNationsTable()
    local result = '';
    for key, class in pairs(nab.locations) do
        local location = nab.locations[key];
        local nation = location.race;
        result = result..'|'..location.name..'|'..nation.name..'|"'..nation.translate..'"|  \n';
    end
    return result;
end

function locationsTable()
    local result = '';
    for key, class in pairs(nab.locations) do
        result = result..'|'..nab.locations[key].name..'|  \n';
    end
    return result;
end

function originPlates()
    local result = '';
    for key, class in pairs(nab.locations) do
        result = result..'### '..nab.locations[key].name..'  \n';
        local spec = nab.locations[key].ali;
        result=result.."<nabplate name='"..spec.name.."' icon='"..spec.icon.."' desc='"..spec.desc.."'></nabplate>";
        result = result..'  \n';
    end
    return result;
end

function specsPlates()
    local result = '';
    for key, class in pairs(nab.specs) do
        result = result..'### '..nab.classes[key].name..'  \n';
        for k, spec in pairs(class) do            
            result=result.."<nabplate name='"..spec.name.."' icon='"..spec.icon.."' desc='"..spec.desc.."'></nabplate>";
        end
        result = result..'  \n';
    end
    return result;
end

function classes()
    local str = '';
    for key, value in pairs(nab.classes) do
        str = str..key..': { name: "'..value.name..'", desc:"'..value.desc..'" },';
    end
    return str;
end

function skills()
    local labels = '';
    for key, value in pairs(nab.skills) do
        labels = labels..'"'..key..'": {'.."name:'".. value.name.."',stat:'".. value.stat.."',desc:'".. value.desc.."',value:".. value.value..'}, ';
    end
    return labels;
end

function skillslabels()
    local labels = '';
    for key, value in pairs(nab.skills) do
        labels = labels..key..':"'..value.name..'", ';
    end
    return labels;
end

function talslabels()
    local labels = '';
    for key, value in pairs(nab.talents) do
        labels = labels..key..':"'..value.name..'", ';
    end
    return labels;
end

function talscount()
    local count=0;
    for _ in pairs(nab.talents) do
        count=count+1;
    end
    return count;
end

function tals()
    local labels = '';
    for key, value in pairs(nab.talents) do
        labels = labels..'{'.."name:'".. value.name.."',desc:'".. value.desc.."',icon:'".. value.icon.."'}, ";
    end
    return labels;
end

function talstext()
    local labels = '<span>';
    for key, value in pairs(nab.talents) do
        labels = labels..'<br/>'..value.name..': '..value.desc;
    end
    return labels..'</span>';
end

function skillsValues()
    local vals = '';
    for key, value in pairs(nab.skills) do
        vals = vals..key..':0, ';
    end
    return vals;
end

function skillDescs()
    local labels = '';
    for key, value in pairs(nab.skills) do
        labels = labels..key..':"'..value.desc..'", ';
    end
    return labels;
end

function skillsMD()
    local result = '';
    local grouped = groupBy(nab.skills,'stat');
    for key, value in pairs(grouped) do
        result=result.."### "..nab.attr[key]..'  \n';
        for k, v in pairs(value) do
            result=result..'* **'..v.name..'**: '..string.lower(v.desc)..'  \n';
        end
        result=result..'  \n';
    end
    return result;
end

function talsMD()
    local result = '';
    for key, value in pairs(nab.talents) do
        result=result.."### "..value.name..'  \n';
        result=result..value.desc..'  \n';
    end
    return result;
end

function talsPlate()
    local result = '';
    for key, value in pairs(nab.talents) do
        result=result.."<nabplate name='"..value.name.."' icon='"..value.icon.."' desc='"..value.desc.."'></nabplate>";
    end
    return result;
end

function groupBy(list, key)
    local result = {}
    for _, item in pairs(list) do
        local groupValue = item[key]
        
        if not result[groupValue] then
            result[groupValue] = {}
        end
        
        table.insert(result[groupValue], item)
    end
    return result
end