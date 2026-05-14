
# Таверна "У Горы"

<blockquote class="nwn">
<p>
Двери таверны «У горы» распахиваются, пропуская внутрь сухой предгорный ветер и четверых чужаков. Тяжелый запах дешевого табака, жженого масла и пота бьет в нос. Полумрак разрывают редкие масляные лампы. Разговоры стихают сами собой. Четвёрка героев выглядит как живое противоречие: впереди идет маг окутанный песчанным маревом, за его спиной ступает жилистый жрец с золотым молотом, а замыкают строй закованная в металл женщина-врач и девушка, чьи пальцы оплетены живыми лианами. Они здесь явно не за выпивкой.
</p>
</blockquote>


<div class="nwn-bg dialogue-log">

<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Вы входите в таверну и встаёте у стойки. На колченогих стульях за грязными столами располагаются кучки подозрительных личностей. В Таверне есть кость <strong>Множество людей d8</strong>. Сразу после того как вы зашли, кто-то открыл окно чтобы рассеять <strong>табачный дым d6</strong>, но пока у вас есть возможность воспользоваться им. Итак, то хочет начать?</span>
</div>

</div>

<details>
    <summary>Ибран</summary>
//%examplehero2()
</details>

<div class="nwn-bg dialogue-log">
<div class="dialogue-line line-player">
    <span class="speaker-name">Ибран</span>
    <span class="speech-text">Я хочу использовать <strong>//%(nab.skills.intimidation.name)</strong> на трактирщика чтобы выяснить знает ли он кто из присутствующих культисты.</span>
</div>
//%nab.set('complex',11)
<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Хорошо, сложность <strong>//%(nab.var.complex)</strong> - не легко будет запугать трактирщика в злачной таверне на краю мира.</span>
</div>

</div>
<div class="dialogue-meta">
    Ибран бросает кости...
</div>

//%rollHtml({
        { name=nab.skills.intimidation.name,dice=4,result=2},
        { name=nab.attr.wis,dice=8,result=5}
    },nab.var.complex)

<div class="nwn-bg dialogue-log">

<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Ну что же, не повезло. Ещё кто ни-будь?</span>
</div>
<div class="dialogue-line line-player">
    <span class="speaker-name">Варад</span>
    <span class="speech-text">Я воспользуюсь <strong>табачным дымом</strong> и спрячусь где ни-будь в таверне подальше от всех. </span>
</div>

</div>
<details>
    <summary>Варад</summary>
//%examplehero4()
</details>

<div class="nwn-bg dialogue-log">
//%nab.set('complex',3)
<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Думаю, это будет легко сделать... Сложность <strong>//%(nab.var.complex)</strong>. Так как ты используешь кость сцены <strong>Табачный дым d4</strong>, твой навык d4 и //%(nab.attr.dex)d12 автоматически позволяют тебе спрятаться.</span>
</div>

<hr/>
<div class="dialogue-line line-player">
    <span class="speaker-name">Шаррат</span>
    <span class="speech-text">Ты говоришь что в таверне много людей, так? Тогда я хочу попытаться найти каких ни-будь наших знакомых. Я делаю проверку навыка <strong>//%(nab.skills.contacts.name)</strong>, и прошу у <strong>Инанны</strong> помощи.</span>
</div>

<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Ты уверена? У тебя нет этого навыка, так что ты не сможешь добавить к нему кость //%(nab.attr.wis:gsub('.$','и')).</span>
</div>
</div>

<details>
<summary>Шаррат</summary>
//%examplehero1()
</details>

<div class="nwn-bg dialogue-log">
<div class="dialogue-line line-player">
    <span class="speaker-name">Шаррат</span>
    <span class="speech-text">Зато я могу использовать кость сцены d8, с помощью Инанны это будет точно такой же бросок.</span>
</div>

<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Хорошо, но кость сцены в этом случае может и мешать, так что к базовой сложности d4 я тоже добавлю кость сцены d8.</span>
</div>
<div class="dialogue-meta">
    Шаррат и Мастер бросают кости...
</div>
</div>

//%rollHtml({
        { name=nab.skills.contacts.name,dice=4,result=4},
        { name='Множество людей',dice=8,result=6},
        { name='Помощь Инанны',dice=4,result=1}
    },0,{
        { name='Поиск знакомых',dice=4,result=4},
        { name='Множество людей',dice=8,result=2}
    })


<blockquote class="nwn">
<p>
Шаррат беглым взглядом осматривает таверну и замечает вашего старого знакомого <strong>Пазура</strong>. По пути в горы вы пересекались с ним на развилке, и он поделился с вами небольшим количеством еды. Сейчас же вы тепло поприветствовали друг друга и проставили друг другу пару кружек эля. В разговоре с ним вы выяснили, что за левым столом напротив главного окна сидит четверо незнакомцев, которых здесь прежде никогда не видели. Вероятно, это и есть те личности которых вы ищете.
</p>
</blockquote>

<div class="nwn-bg dialogue-log">

<div class="dialogue-line line-player">
    <span class="speaker-name">Инанна</span>
    <span class="speech-text">Я хочу проверить есть ли у этих незнакомцев магическое устройство. Я использую свой навык <strong>//%(nab.skills.magic.name)</strong>.</span>
</div>

//%nab.set('complex',9)
<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">В <strong>Баал Саруте</strong> присутствует сильный магический фон, от того что спрятано в горах, поэтому Сложность поиска магии высока, <strong>//%(nab.var.complex)</strong>. Это в целом больше чем ты можешь выкинуть на двух костях.</span>
</div>
</div>
<details>
<summary>Инанна</summary>
//%examplehero3()
</details>

<div class="nwn-bg dialogue-log">

<div class="dialogue-line line-player">
    <span class="speaker-name">Инанна</span>
    <span class="speech-text">Это же магическое действие? Тогда я могу добавить свою <strong>силу магии d4</strong> чтобы у меня было больше костей. А затем использую класс <strong>Плута</strong>: потратив <strong>Волю</strong> я могу выбрать не два результата из броска, а три.</span>
</div>
<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Отлично сыграно <strong>Инанна</strong>! Я даже не могу ничего возразить. Пожалуй за такую комбинацию я дам тебе еще 1 ед. <strong>Силы Воли</strong>, можешь считать, что эта классовая возможность обошлась тебе бесплатно!</span>
</div>

<div class="dialogue-meta">
    Инанна бросает кости...
</div>

</div>

//%rollHtml({
        { name=nab.skills.magic.name..' (Навык)',dice=4,result=4},
        { name=nab.attr.int,dice=4,result=3},
        { name='Сила магии',dice=4,result=2}
    },nab.var.complex,{},nab.classes.rogue.name)

<blockquote class="nwn">
<p>
Инанна замечает сильное проявление магии - стол, за которым сидят незнакомцы, буквально искрится синим спектром магии - тьмой далёких звёзд. Через мгновение воздух в таверне наполняется <strong>ярким цветочным запахом</strong>, внутри которого начинает проявляться "аромат" <strong>папоротника</strong>. Как вы уже догадались - загадочное <strong>Устройство</strong> было запущено. Смесь этих запахов позволяет вам однозначно определить природу магии - иллюзия, пропитанная увяданием и смертью. Большая часть посетителей уже покинула таверну, и у вас есть шанс застать культистов врасплох.
</p>
</blockquote>

<div class="nwn-bg dialogue-log">

<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Сцена меняется. Кости <strong>Множество людей</strong> и <strong>Табачный дым</strong> больше недоступны, но теперь вы можете использовать <strong>Переполох d10</strong> и <strong>Рассеянная магия d6</strong>. Новая сцена является <strong>напряжённой</strong>, поэтому теперь ходы будут идти строго по очереди. Начинаем в соответствии с порядком инициативы - <strong>Варад</strong>, ты ходишь первым.</span>
</div>

<div class="dialogue-line line-player">
    <span class="speaker-name">Варад</span>
    <span class="speech-text">Так как культисты меня не видят, я подкрадываюсь к ним и пытаюсь обезвредить устройство.</span>
</div>

//%nab.set('complex',20)
<div class="dialogue-line line-gm">
    <span class="speaker-name">Мастер</span>
    <span class="speech-text">Хорошо, делай бросок <strong>//%(nab.skills.thievery.name)</strong> против сложности <strong>//%(nab.var.complex), так как <strong>устройство</strong> находится ровно под ногами культистов.</span>
</div>

<div class="dialogue-line line-player">
    <span class="speaker-name">Варад</span>
    <span class="speech-text">Сложность высокая, но я использую кость сцены <strong>Переполох d10</strong>.</span>
</div>

<div class="dialogue-meta">
    Варад бросает кости...
</div>

</div>

> От результата этого броска зависит дальнейшее развитие истории:

<div class='jb'>
<a href="./judge.md" class="nwn-btn-a center-margin">Устройство обезврежено</a><a href="./basement.md" class="nwn-btn-a center-margin">Культисты заметили Варада</a>
</div>