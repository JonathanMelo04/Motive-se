import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Frases do dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _numeroAleatorio = 0;
  List _frases = [
  'A arte de ser ora audacioso, ora prudente, é a arte de vencer. – Napoleão Bonaparte',
  'Nossos fracassos, às vezes, são mais frutíferos do que os êxitos. – Henry Ford',
  'Comemore os seus sucessos. Veja com humor os seus fracassos. – Sam Walton',
  'Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer. – Moliere',
  'É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo. – Sócrates',
  'Existe o risco que você jamais pode correr. Existe o risco que você jamais pode deixar de correr. – Peter Drucker',
  'Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer. – Santo Agostinho',
  'A felicidade não está em fazer o que a gente quer, e sim querer o que a gente faz. – Jean Paul Sartre',
  'É sempre divertido fazer o impossível. – Walt Disney',
  'Experiência é o nome que cada um dá a seus erros. – Oscar Wilde',
  'Somente os que ousam errar muito podem realizar muito. – John F. Kennedy',
  'Somos o que repetidamente fazemos. Portanto, a excelência não é um feito, é um hábito. – Aristóteles',
  'Toda empresa precisa ter gente que erra, quem não tem medo de errar é que aprende com erro. – Bill Gates',
  'A confiança em si mesmo é o primeiro segredo do sucesso. – Ralph Waldo Emerson',
  'Aquele que pretende ser um líder tem que ser uma ponte. – Provérbio Galês',
  'Muda tuas ideias e mudarás teu mundo. – Norman Vincent Peale',
  'A vitória sempre foi de quem nunca duvidou dela. – Raul Follerean',
  'Se existe uma forma de fazer melhor, descubra-a. – Thomas Edison',
  'O problema é que a maioria das pessoas prefere um elogio que prejudique do que uma crítica que beneficie. – Norman Vincent Peale',
  'A sorte favorece a mente preparada. – Louis Pasteur',
  'Não há sucesso sem dificuldade. – Sófocles',
  'A maior recompensa pelo trabalho não é o que a pessoa ganha, é o que ela se torna através dele. – John Ruskin',
  'Não encontre defeitos, encontre soluções. Qualquer um sabe queixar-se. – Henry Ford',
  'Conhecimento não é aquilo que você sabe, mas o que você faz com aquilo que sabe. – Aldous Huxley',
  'Critica o que fazes, e não faças o que criticas. – Provérbio Árabe',
  'Se sonhar grande dá o mesmo trabalho que sonhar pequeno, por que vou sonhar pequeno? – Jorge Paulo Lemann',
  'Destino não é exterior a nós; somos nós que criamos nosso próprio destino dia após dia. – Henry Miller',
  'A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento. – Frederick Herzberg',
  'Você precisa fazer aquilo que pensa que não é capaz de fazer” – Eleanor Roosevelt',
  'Faça o que puder, com o que tiver, onde estiver. – Theodore Roosevelt',
  'A vida é curta demais. Não corra o risco de passar seus dias apenas afinando seu instrumento sem jamais fazer um grande espetáculo. – Carlos “Wizard” Martins',
  'Tudo que você precisa fazer é mover as pessoas só um pouquinho para mudanças acontecerem. Não precisa ser algo enorme. – Viola Davis',
  'Nossas dúvidas são traidoras e nos fazem perder, por medo de tentar, o que poderíamos ganhar. – William Shakespeare',
  'Se você quer fazer uma coisa realmente grande, seja grande como a coisa que você quer fazer. – Nizan Guanaes',
  'Aquele que é feliz, espalha felicidade. Aquele que teima na infelicidade, que perde o equilíbrio e a confiança, perde-se na vida. – Anne Frank',
  'Os problemas são apenas oportunidades com roupas de trabalho. – Henry John Kaiser',
  'Na crise, existem aqueles que se abatem, sentam no chão e choram; e existem aqueles que fabricam e vendem lenços. Nós somos fabricantes de lenços. – Abilio Diniz',
  'Levanto a minha voz, não para que eu possa gritar, mas para que aqueles sem voz possam ser ouvidos. – Malala Yousafzai',
  'Em todas as situações, deve-se considerar o objetivo. – (Jean de La Fontaine)',
  'Se você quer saber o quanto você é forte, é na necessidade que descobrimos que somos gigantes. – Cleusa Maria da Silva',
  'Só se aprende com a experiência. Portanto, não importa o que as pessoas lhe digam, você tem que viver e cometer seus próprios erros para aprender. – Emma Watson',
  'É o motivo que engrandece a ação; é o fazer, não o feito. – Margaret Preston',
  'Um grande líder é exemplo pela atitude, não pelo discurso. – Robinson Shiba',
  'Sucesso é mais frequentemente alcançado por aqueles que não sabem que o fracasso é inevitável. – Coco Chanel',
  'Quem vive sem disciplina morre sem honra. – Provérbio islandês',
  'Um dia é preciso parar de sonhar, tirar os planos da gaveta e, de algum modo, começar. – Amyr Klink',
  'A maior descoberta de todos os tempos é que uma pessoa pode mudar, simplesmente mudando de atitude. – Oprah Winfrey',
  'Mesmo se você estiver no caminho certo será atropelado se ficar sentado nele. – Will Rogers',
  'O jeito mais eficiente de fazer algo é fazendo. – Amelia Earhart',
  'O insucesso é uma oportunidade para recomeçar com mais inteligência. – Henry Ford',
  'O liderado será reflexo da sua liderança, então quem espera lealdade, primeiro deve ser leal. – Flávio Augusto',
  'Sozinhos, pouco podemos fazer; juntos, podemos fazer muito. – Helen Keller',
  'Uma atitude vitoriosa é meio caminho andado para o sucesso. – Arthur Riedel',
  'Lembre-se que não conseguir o que você quer é algumas vezes um lance de sorte. – Dalai Lama',
  'E o problema é que, se você não arrisca nada, você arrisca mais. – Erica Jong',
  'Eu não tenho Ídolos. Tenho admiração por trabalho, dedicação e competência. – Ayrton Senna',
  'O segredo do nosso sucesso é que nós nunca, nunca desistimos. – Wilma Mankiller',
  'Não importa o quão rápido você anda, mas a força de vontade para nunca parar. – Confúcio',
  'Não perca tempo tentando mudar a opinião dos outros. Faça seu trabalho e não ligue para o que pensam. – Tina Fey',
  'Você não pode deixar de usar a criatividade. Quanto mais você usa, mais você tem. – Maya Angelou',
  'Há apenas uma maneira de evitar críticas: não fazer, não falar e não ser nada. - Aristóteles',
  'Ter problemas na vida é inevitável. Ser derrotado por eles é opcional. – Roger Crowford',
  'Mude a sua vida hoje. Não deixe para arriscar no futuro, aja agora, sem atrasos. – Simone de Beauvoir',
  'É importante aprender a não se aborrecer com opiniões diferentes das suas. – Bertrand Russell',
  'Na adversidade, uns desistem, enquanto outros batem recordes. – Ayrton Senna',
  'Espíritos grandiosos sempre encontraram oposição violenta de mentes medíocres. – Albert Einstein',
  'Quando você tropeçar, mantenha a fé. Quando for nocauteado, levante rápido. Não ouça quem diz que você não pode ou não deve continuar. – Hillary Clinton',
  'A distância entre o sonho e a realidade, chama-se disciplina. – Bernardinho',
  'Mestre não é quem sempre ensina, mas quem de repente aprende. – João Guimarães Rosa',
  'Tenho aprendido ao longo dos anos que, quando a mente está pronta, isso diminui o medo. – Rosa Parks',
  'Você falha, e aí? A vida continua. É só quando você se arrisca a falhar que descobre coisas. – Lupita Nyong’o',
  'No fim tudo dá certo, e se não deu certo é porque ainda não chegou ao fim. – Fernando Sabino',
  'O mais corajoso dos atos ainda é pensar com a própria cabeça. – Coco Chanel',
  'Alguns fracassos são inevitáveis. É impossível viver sem fracassar em alguma coisa, a não ser que você viva tomando tanto cuidado com tudo que você simplesmente não viva. – J. K. Rowling',
  'As invenções são o resultado de um trabalho teimoso. – Santos Dumont',
  'Nada contribui tanto para clarear a mente do que um objetivo claro. – Marry W. Shelley',
  'Não existe falta de tempo, existe falta de interesse. Porque quando a gente quer mesmo, a madrugada vira dia. Quarta-feira vira sábado e um momento vira oportunidade. – Pedro Bial',
  'Tudo o que você sempre quis está do outro lado do seu medo. – George Addair',
  'Você não crescerá a não ser que tente algo além daquilo que já domina. – Ronald Osborn',
  'Você pode mudar sem crescer, mas não pode crescer sem mudar. – Larry Wilson',
  'Quanto mais velha eu fico, mais me interesso pelas mulheres. Ainda não conheci uma mulher que não é forte. Elas não existem. – Diane von Furstenberg',
  'Nossa paciência conquistará mais do que a nossa força. – Edmund Burke',
  'Certifique-se de que suas palavras e seus atos estão em harmonia. – Claus Moller',
  'Descubra quem você é e seja essa pessoa. Isso é o que sua alma foi colocada nesta Terra para ser. Encontre essa verdade, viva essa verdade e tudo mais virá. – Ellen Degeneres',
  'Quanto maior a dificuldade maior é o mérito de superá-la. – H. W. Beecher',
  'Não há saber mais ou saber menos: há saberes diferentes. – Paulo Freire',
  'Nunca é tarde demais para ser o que você poderia ter sido. – George Eliot',
  'Ao fim do dia, podemos aguentar muito mais do que pensamos que podemos. – Frida Kahlo',
  'Ouça qualquer um que tenha uma ideia original. Encoraje-o. Deixe as pessoas continuarem suas ideias. – William McKnight',
  'Esforce-se para não ser um sucesso, mas sim para ser valioso. (Albert Einstein)',
  'Não ergas um edifício sem fortes alicerces ou viverás com medo. – Sabedoria Persa',
  'Você nunca vai chegar ao seu destino se você parar e atirar pedras em cada cão que late. – Winston Churchill',
  'Assistir a grandes pessoas fazerem o que você ama é uma boa maneira de se inspirar. – Amy Poehler',
  'Uma pessoa que nunca cometeu um erro, nunca tentou nada de novo. (Albert Einstein)',
  'Eu não sonhei com sucesso. Eu trabalhei para ele. – Estée Lauder',
  'Ganhar não é tudo, mas querer ganhar é. – Vince Lombardi',
  'Os meus maiores sucessos chegaram no seguimento de grandes fracassos. – Barbara Corcoran',
  'Sonhe grande e se atreva a falhar. – Norman Vaughan',
  'Não espere por grandes líderes; faça você mesmo, pessoa a pessoa. Seja leal às ações pequenas porque é nelas que está a sua força. – Madre Teresa de Calcutá',
  'Você pode ficar desapontado se falhar, mas já está derrotado se não tentar. (Beverly Sills)',
  'Aprendi a aceitar desafios que nunca pensei fazer antes. Sucesso e conforto não podem coexistir. – Ginni Rometty',
  'Na vida sempre fazemos escolhas. Ainda que escolhemos não escolher. – Carmen Miranda',
  'Sempre fiz algo que eu achava que estava pouco preparada para fazer. Quando você tem um momento de incerteza mas persiste, é aí que você consegue avançar. – Marissa Mayer',
  'Quem sabe faz a hora, não espera acontecer. – Geraldo Vandré',
  'Defina sucesso com seus próprios termos, o alcance segundo as suas próprias regras e viva uma vida da qual você se orgulhe. – Anne Sweeney',
  'O medo de perder, tira a vontade de ganhar'
  ];

  void _incrementCounter() {
    setState(() {

   _numeroAleatorio = new Random().nextInt(104);

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
