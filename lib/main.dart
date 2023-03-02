import 'dart:ffi';

import 'package:flutter/material.dart';
import './detailsPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Liste des livres',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Liste des livres')),
        body: const BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

// replace this function with the code in the examples
List<String> bookTitles = [
  'Toilet-bound hanako-kun t.12',
  'Mémoires de la forêt : les carnets de Cornélius Renard',
  'Trésor t.1 : la vague rouge',
  'Hunter x hunter t.37',
  'Nouvelle Babel',
  'Trois vies par semaine',
  'Solo leveling t.9',
  'Fabricant de larmes t.1',
  'La ritournelle',
  'Cookeo : les recettes préférées des utilisateurs',
  'Les femmes du bout du monde',
  'Tokyo revengers t.23',
  'Portraits croisés',
  'Recettes kawaii : délicieuses et trop mignonnes',
  'Fable t.2 : la mer sans nom',
];

List<String> bookImages = [
  'book1.jpg',
  'book2.jpg',
  'book3.jpg',
  'book4.jpg',
  'book5.jpg',
  'book6.jpg',
  'book7.jpg',
  'book8.jpg',
  'book9.jpg',
  'book10.jpg',
  'book11.jpg',
  'book12.jpg',
  'book13.jpg',
  'book14.jpg',
  'book15.jpg',
];
List<String> bookAuthor = [
  'Aidairo',
  'Sanoe , Brun-Arnaud Mickaël',
  'Jean-Baptiste Saurel',
  'Togashi Yoshihiro',
  'Bussi Michel',
  'Bussi Michel',
  'Chugong',
  'Doom Erin',
  'Valognes Aurélie',
  'Collectif',
  'Da Costa Mélissa',
  'Wakui Ken',
  'Goldberger Sacha',
  'Pinku Kiwi',
  'Young Adrienne',
];
List<String> bookDescription = [
  "Shijima, le quatrième mystère, est maintenant prêt à aider Nene à retourner dans la réalité. C'est une course contre la montre qui s'engage pour Nene et Kô ! Ils leur restent peu de temps avant que la seule porte de sortie ne se ferme pour de bon et qu'ils finissent piégés à jamais à l'intérieur du tableau. Pour ce faire, ils doivent surmonter un dernier obstacle : Hanako. Le fantôme, de son côté, fait tout ce qui est en son pouvoir pour les empêcher de s'échapper. Dans l'espoir d'enfin le convaincre de les laisser partir, Nene vide son sac !",
  "Alors qu'Archibald se prépare aux festivités de l'automne, le maire de Béllecorce lui apprend un matin que sa famille n'est pas la propriétaire légitime de la librairie. Il procède à son expulsion immédiate au profit d'un nouveau venu en ville, le mystérieux Célestin Loup. À l'aide de son père et de son facétieux petit neveu Bartholomé, Archibald part sur les traces de cinq mystérieux carnets que son grand-père, Cornélius Renard, a dissimulés. Il espère ainsi découvrir la vérité, et prouver qu'il est bien le véritable propriétaire de la librairie. Mais il ne sera pas facile de les retrouver, car Cornélius, avant de perdre la tête, les a confiés aux membres d'une société secrète, la Confrérie des plumes. Et ceux-ci semblent bien décidés à s'assurer que les Renard sont dignes des souvenirs de leur ancêtre...",
  "Brigantin, le vieux navire de la mère de Trésor, reste à quai. Tout comme son père d'ailleurs, échoué dans ses souvenirs et ses regrets depuis que sa femme, réputée grande baroudeuse, a disparu. Tout cela n'empêche pas le petit garçon de 9 ans de jouer aux pirates avec ses potes Dico, Yav, et Noisette sur le vénérable bateau. Jusqu'au jour où Gaspard Pivoleux, un collectionneur bien louche, oblige le père de Trésor à lui vendre Brigantin... Révolté, et très attaché au seul souvenir qui lui reste de sa maman, Trésor décide d'embarquer avec son équipage et de mettre les voiles vers une incroyable chasse au trésor... Mais Pivoleux, qui semble avoir un plan secret concernant Brigantin, ne l'entend peut-être pas de cette oreille... L'aventure, le danger et même la magie vont dès lors rythmer la vie de cet équipage improbable, courageux et... inexpérimenté !",
  "C'est en ressentant des vibrations menaçantes que Kurapika fait passer les séances d'entraînement au nen qu'il dispense à l'étape suivante. Pendant ce temps, chaque prince avance ses pions de son côté et la guerre de succession devient de plus en plus sérieuse. Enfin, dans les niveaux inférieurs du bateau, la Brigade fantôme se retrouve impliquée dans un conflit entre des clans mafieux...",
  "Dans son nouveau thriller, Michel Bussi nous emmène des favelas de Rio au Kazakhstan, des confins de l'Himalaya à Tristan da Cunha, l'île la plus isolée, de Samarcande à la jungle de Birmanie... et dans bien d'autres lieux, dans un monde qui ressemble beaucoup au nôtre, mais où la technologie permet désormais aux humains d'être à la fois ici... et ailleurs.Sur une île privée paradisiaque, de riches retraités se font assassiner alors qu'il était impossible de pénétrer leur royaume. Première fêlure dans une société idyllique où les distances, les frontières... et les embouteillages ont été abolis.Trois policiers, mais aussi un journaliste ambitieux et une institutrice nostalgique, se lancent dans l'enquête. Une course contre la montre s'engage pour pister un mystérieux tueur blond qui semble ne pas avoir d'identité dans une démocratie mondialisée où l'on sait pourtant à chaque instant où vous êtes, d'où vous venez, où vous allez.Et avant que ne soit déclenchée... la nouvelle Babel.",
  "Habiter trois villes différentes ? Posséder trois identités reconnues ? Aimer trois femmes intensément ?Avoir trois vies par semaine.Pour tirer les fils de ce nouveau suspense qui mêle les thèmes de l'exil, la vengeance, la multiplicité d'une vie... l'unique Michel Bussi",
  "Lorsque d'étranges portails sont apparus aux quatre coins du monde, l'humanité a dû trouver une parade pour ne pas finir massacrée par les griffes des monstres des monstres qui en sortent. Dans le même temps, certaines personnes ont développé des capacités permettant de les chasser. Ces combattants intrépides n'hésitent pas à foncer au coeur des donjons pour combattre les créatures qu'ils abritent.",
  "Pour Nica, dix-sept ans, l'heure est venue de tirer un trait sur son passé. Son rêve est sur le point de se réaliser : un couple est venu l'adopter. Adieu l'orphelinat et sa terrifiante légende du fabricant de larmes. Mais dans sa nouvelle maison, Nica n'est pas seule. Rigel, l'orphelin agité et mystérieux avec qui elle a grandi, a lui aussi été adopté. Et il compte bien faire de la nouvelle vie de Nica un enfer. Pour Nica et Rigel, la guerre est déclarée. Celle de la haine qu'ils se sont vouée... ou des sentiments qu'ils n'oseront jamais s'avouer ?",
  "Dans certaines familles, année après année, les repas de fête se ressemblent : mêmes plats, mêmes convives, mêmes discussions. Mais un rien peut suffire pour que les bonnes manières volent en éclats : non-dits, vieilles rancunes, mauvaise foi... Le moment arrive des règlements de comptes en bonne et due forme.Et si c'était enfin l'occasion de se dire les choses ?Avec son talent unique pour raconter les heurts et les bonheurs de la vie familiale, Aurélie Valognes nous plonge dans une tribu joyeusement dysfonctionnelle, qui pourrait aussi être la nôtre.Dialogues affûtés, brouillages générationnels et personnages bien dessinés préludent à un atterrissage en douceur.",
  "Depuis 10 ans, Cookeo est votre meilleur allié pour concocter de délicieux petits plats au quotidien !De l'entrée au dessert, il n'a jamais été aussi facile et rapide de cuisiner qu'avec votre Cookeo ! Retrouvez la sélection des 100 recettes préférées des utilisateurs les mieux notées, spécialement conçues pour vous par des utilisateurs quotidien du robot-cuiseur : curry de boeuf, poulet basquaise, risotto crémeux à la seiche ou encore cheesecake au citron...",
  "Si tu te demandes ce que nous faisons ainsi, loin des hommes, je vais te dire : nous veillons sur notre petit univers, nous veillons les unes sur les autres. C'est ce que font les femmes du bout du monde. À la pointe sud de la Nouvelle-Zélande, dans la région isolée des Catlins, au coeur d'une nature sauvage, vivent Autumn et sa fille Milly. Sur ce dernier bastion de terre avant l'océan Austral et le pôle Sud, elles gèrent le camping Mutunga o te ao, le bout du monde en maori. Autumn et Milly forment un duo inséparable, jusqu'au jour où débarque Flore, une jeune parisienne en quête de rédemption... Hantées par le passé mais bercées par les vents et les légendes maories, ces trois femmes apprendront à se connaître, se pardonner et s'aimer. Mélissa Da Costa nous offre un voyage inoubliable à travers des paysages d'une stupéfiante beauté, aux côtés de personnages inspirés et inspirants. Un nouveau roman magistral et une ode à la liberté.",
  "Takemichi a enfin réussi à atteindre le meilleur avenir dont il pouvait rêver. Mais... Lui n'y était pas. Afin de trouver des indices sur sa disparition, il ouvre la capsule temporelle en compagnie de ses amis le jour fatidique. Ce qu'il ne savait pas, c'est qu'il y découvrirait ce que Mikey cachait réellement au fond de son coeur.",
  "Charlot interprété par Matthieu Chedid, le spermatozoïde de Tout ce que vous avez toujours voulu savoir sur le sexe de Woody Allen par Pierre Richard, l'héroïne de L'Exorciste de William Friedkin par Pénélope Bagieu, Beethoven par Eric-Emmanuel Schmitt, Wonder Woman par Caroline Vigneaux, Molière par Guillaume Gallienne, Victor Hugo par François Berléand, Kev Adams en Joconde... 36 personnalités ont joué le jeu de se laisser transformer puis photographier par Sacha Goldberger. Ce projet, qui a germé pendant la crise du Covid 19, fait écho à la notion de « culture non essen- tielle » prodiguée pendant la pandémie : couperet qui s'est abattu sur la société mais principalement sur tous les acteurs du monde de la culture.",
  "Vous connaissez le « Kawaii », ce phénomène de société japonais qui signifie « mignon » et que l'on retrouve dans tous les aspects du quotidien ? Pinku Kiwi vous propose 40 recettes 100 % kawaii, 100 % mignonnes, et des tonnes de petits bonus et DIY dans une ambiance colorée et décalée",
  "Enlevée par Zola, l'ennemi de West, Fable vogue en direction de la mer Sans Nom. Contrainte d'utiliser ses dons de plongeuse et de gemmologue pour survivre, elle désespère de retrouver un jour le Marigold et son équipage, devenu sa famille. Seulement, sa rencontre avec la plus grande marchande de la mer Sans Nom, Holland, pourrait tout bouleverser. Levant le voile sur ses origines, Fable va devoir lutter pour sauver ce qu'elle a de plus précieux, car c'est non seulement la vie de Saint, son père, qui est en jeu mais également l'avenir des Goulets. Et Fable est bien déterminée à se battre pour ce qui a toujours été et reste son foyer...",
];

List<double> bookPrice = [
  16.70,
  14.50,
  12.95,
  6.95,
  9.20,
  22.90,
  14.95,
  19.00,
  7.90,
  20.95,
  21.90,
  6.99,
  40.00,
  16.95,
  18.90,
];

Widget _myListView(BuildContext context) {
  return ListView.builder(
    itemCount: bookTitles.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(
                bookTitle: bookTitles[index],
                bookImage: bookImages[index],
                bookAuthor: bookAuthor[index],
                bookDescription: bookDescription[index],
                bookPrice: bookPrice[index],
              ),
            ),
          );
        },
        child: Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${bookImages[index]}'),
            ),
            title: Text(bookTitles[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      );
    },
  );
}
