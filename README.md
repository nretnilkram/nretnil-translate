<h2>Version: 0.0.2</h2>

<h1>Usage:</h1>

<h3>Translate</h3>

```ruby

text=Pangram anyone? A quick brown fox jumped over the lazy dog. Pack my box with five dozen liquor jugs. A quick movement of the enemy will jeopardize six gunboats. The five boxing wizards jump quickly.

Nretnil::Translate.pig_latin(text)
# => Angrampay anyoneway? Away ickquay ownbray oxfay umpedjay overway ethay azylay ogday. Ackpay myay oxbay ithway ivefay ozenday iquorlay ugsjay. Away ickquay ovementmay ofway ethay enemyway illway eopardizejay ixsay unboatsgay. Ethay ivefay oxingbay izardsway umpjay icklyquay.

Nretnil::Translate.pig_latin(text,learn_mode=true)
# => Angram-pay anyone-way? A-way ick-quay own-bray ox-fay umped-jay over-way e-thay azy-lay og-day. Ack-pay -myay ox-bay ith-way ive-fay ozen-day iquor-lay ugs-jay. A-way ick-quay ovement-may of-way e-thay enemy-way ill-way eopardize-jay ix-say unboats-gay. E-thay ive-fay oxing-bay izards-way ump-jay ickly-quay.

```