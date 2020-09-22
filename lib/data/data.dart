import 'package:cooking_app/model/recipe_object.dart';
import 'package:flutter/material.dart';

class RecipeData with ChangeNotifier {
  List<Recipe> _RecipeDataList = [
    Recipe(
      id: 1,
      image: 'images/spicy_beef_&_cauli_rice.jpg',
      category: 'Lunch',
      CookingTime: 24,
      title: 'Spicy beef & cauli rice',
      ingredient: [
        '500 g lean minced beef',
        '1 head of cauliflower , (800g)',
        '1 heaped teaspoon rendang powder',
        '1 bunch of fresh mint , (30g)',
        '1 x 400 g tin of light coconut milk'
      ],
      preparation: [
        'Place the minced beef in a large shallow casserole pan with 1 tablespoon of olive oil, then break it up and fry on a high heat, stirring regularly.',
        'Click off and discard any tatty outer leaves from the cauliflower, putting the nice leaves into a food processor.',
        'Halve the cauliflower, breaking up one half into the processor. Cut little bite-sized florets off the other half into the mince pan, chucking all the stalks into the processor as you go.',
        'Stir the rendang powder into the pan and cook it all for 10 minutes, or until crispy, stirring regularly.',
        'Meanwhile, pick half the mint leaves into the processor, add a pinch of sea salt and black pepper, and blitz until fine.',
        'Tip into a heatproof bowl, cover, and microwave on high for 4 to 5 minutes.',
        'Reserving the baby leaves, pick the remaining mint leaves into the pan, toss well, then pour in the coconut milk and half a tin’s worth of water.',
        'Bring to the boil, simmer for 5 minutes, then taste, season to perfection, and scatter over the reserved mint leaves.',
        'Give the cauli rice a good mix up, and serve on the side.'
      ],
    ),
    Recipe(
        id: 2,
        title: 'Asparagus, eggs & French dressing',
        image: 'images/asparagus_eggs_&_French_dressing.jpg',
        category: 'Breakfast',
        CookingTime: 15,
        ingredient: [
          '½ a small red onion',
          '4 large free-range eggs',
          '350 g asparagus',
          '½ a bunch of fresh tarragon , (15g)',
          '2 heaped teaspoons Dijon mustard'
        ],
        preparation: [
          'Peel and very finely chop the red onion, place in a bowl, cover with 4 tablespoons of red wine vinegar and add a very good pinch of sea salt.',
          'Lower the eggs into a pan of vigorously simmering water and boil for 5½ minutes exactly.',
          'Line up the asparagus, trim off the woody ends, and place in a colander above the eggs, covered, to steam while the eggs cook. Meanwhile, pick the tarragon leaves.',
          'In a bowl, whisk the mustard with 6 tablespoons of extra virgin olive oil, adding it gradually, then pour in the soaking vinegar from the onion through a sieve, whisking constantly. Taste and season to perfection with black pepper.',
          'When the time’s up on the eggs, divide the asparagus between your plates.',
          'Refresh the eggs under cold water until cool enough to handle, then peel, halve and plate up, sprinkled with the tarragon leaves and onion.',
          'Drizzle each plate with 1 tablespoon of dressing (save the rest for another day), season from a height with a pinch of pepper, and dig in.'
        ]),
    Recipe(
        id: 3,
        title: 'Sicilian tuna pasta',
        CookingTime: 14,
        category: 'Diner',
        image: 'images/Sicilian_tuna_pasta.jpg',
        ingredient: [
          '300 g dried pasta shells',
          '4 heaped teaspoons baby capers',
          '500 g ripe mixed-colour cherry tomatoes',
          '1 tablespoon dried oregano , ideally the flowering kind',
          '1 x 220 g jar of tuna in olive oil , from sustainable sources'
        ],
        preparation: [
          'Cook the pasta in a pan of boiling salted water according to the packet instructions.',
          'Meanwhile, place a large non-stick frying pan on a medium-high heat with 1 tablespoon of olive oil. Add the capers, fry until super-crispy, then scoop out and put aside, leaving the fragrant oil behind.',
          'Halve and add the tomatoes, then sprinkle in most of the oregano.',
          'Drain and flake in the tuna, add 2 ladlefuls of pasta cooking water, and simmer until the pasta is done.',
          'Drain the pasta, reserving a mugful of cooking water, then toss the pasta into the tuna pan, loosening with a splash of reserved cooking water, if needed.',
          'Taste, season to perfection with sea salt and black pepper, then dish up. Sprinkle over the crispy capers and the remaining oregano from a height, drizzle with 1 teaspoon of extra virgin olive oil, and tuck in.'
        ]),
    Recipe(
        id: 4,
        title: 'Crispy garlicky chicken',
        category: 'Lunch',
        image: 'images/crispy_garlicky_chicken.jpg',
        CookingTime: 20,
        ingredient: [
          '2 x 120 g free-range skinless',
          'chicken breasts',
          '2 thick slices of seeded wholemeal',
          'bread , (75g each)',
          '1 clove of garlic',
          '1 lemon',
          '50 g rocket'
        ],
        preparation: [
          'Place the chicken breasts between two large sheets of greaseproof paper, and whack with the base of a large non-stick frying pan to flatten them to about 1cm thick.',
          'Tear the bread into a food processor, then peel, chop and add the garlic, and blitz into fairly fine crumbs.',
          'Pour the crumbs over the chicken, roughly pat on to each side, then re-cover with the paper and whack again, to hammer the crumbs into the chicken and flatten them further.',
          'Put the pan on a medium heat. Fry the crumbed chicken in 1 tablespoon of olive oil for 3 minutes on each side, or until crisp, golden and cooked through.',
          'Slice, plate up, season to perfection with sea salt and black pepper, sprinkle with lemon-dressed rocket, and serve with lemon wedges, for squeezing over.'
        ]),
    Recipe(
        id: 5,
        title: 'Roasted veggie curry',
        image: 'images/roasted_veggie_curry.jpg',
        category: 'Lunch',
        CookingTime: 1,
        ingredient: [
          '1 heaped teaspoon Madras curry paste',
          'olive oil',
          'red wine vinegar',
          '1 parsnip',
          '2 carrots',
          '½ a butternut squash , (600g)',
          '1 courgette',
          '200 g frozen cauliflower',
          '4 cm piece of ginger',
          '2 cloves of garlic',
          '2 tablespoons good mango chutney',
          '1 x 400 g tin of quality plum tomatoes',
          '1 x 400 g tin of light coconut milk 100 g frozen peas'
        ],
        preparation: [
          'Preheat the oven to 200ºC/400ºF/gas 6.',
          'In a large roasting tray, mix the curry paste with a pinch of sea salt, 2 tablespoons of oil and 1 tablespoon of vinegar.',
          'Wash the parsnip, carrots and butternut squash (we’re leaving the skins on). Quarter the parsnip lengthways, remove the fluffy core and chop into bite-sized chunks (about 2cm), adding to the tray as you go.',
          'Repeat with the courgette, then chop up the carrots. Deseed the squash and chop to a similar size. Get it all in the tray with the cauliflower and mix until well coated.',
          'Roast the veg for 40 to 50 minutes, or until golden, gnarly and cooked through.',
          'Meanwhile, for the sauce, put a large shallow casserole pan on a medium heat. Peel and finely chop the ginger and garlic, and place in the pan with 1 tablespoon of oil, stirring regularly.',
          'As soon as it starts to colour, stir in the mango chutney. Let it sizzle for a minute, then pour in the tomatoes, breaking them up with your spoon. As soon as they start to bubble, add the coconut milk. Bring it to the boil, then turn off the heat.',
          'To make the naans, melt the butter in a large non-stick ovenproof frying pan on a medium heat, then add the cloves and cinnamon stick.',
          'Trim the leek and quarter lengthways, wash, finely slice and add to the pan, followed by the spinach. Stir regularly, until dark, dry and intense, then remove and leave to cool.',
          'Pour the flour into a large bowl with a pinch of salt, make a well in the middle and add 1 mug (300ml) of water (using the same mug you used to measure your flour, a regular cup is fine) and 1 tablespoon of oil. Use a fork to gradually mix the flour into the liquid, until it gets too hard to mix.',
          'At this point, use your clean floured hands to knead the dough on a flour-dusted surface for a couple of minutes, adding a little extra flour, if needed. You want it to be pliable so don’t add too much flour, but it shouldn’t be sticking to your work surface.',
          'Now, oil your surface, then stretch and push the dough out into a 30cm circle. Crumble the feta over the cool spinach mixture and mix together, then place in the middle of the dough, leaving a 5cm border at the edge.',
          'Fold in the dough over the filling, patting it together as you go and sealing the filling inside, then pat out to just under 25cm. Wipe out your frying pan, then gently lift the naan into it.',
          'Cook the naan at the bottom of the oven for 20 to 25 minutes, or until golden and crisp on the outside, fluffy in the middle.',
          'A few minutes before you’re ready to serve, bring the sauce back to a simmer, then add all the roasted veg and the frozen peas, and simmer until the peas are cooked and the sauce is a good consistency.',
          'Slice up your naan and serve up with your curry at the table. Nice with a dollop of yoghurt and any chutney or pickles, if you like.'
        ])
  ];

  List<Recipe> get iteam {
    return [..._RecipeDataList];
  }

  List<Recipe> findCatagory(String cat) {
    List<Recipe> catList = [];
    for (int i = 0; i < _RecipeDataList.length; i++) {
      if (_RecipeDataList[i].category == cat) {
        catList.add(_RecipeDataList[i]);
      }
    }
    return catList;
  }

  Recipe findId(int id) {
    return _RecipeDataList.firstWhere((element) => element.id == id);
  }
}
