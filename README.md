<h2>Version: 0.0.4</h2>

<h1>Usage:</h1>

<h3>Pig Latin Translate</h3>
<p>This will take each work in your text and translate it into Pig Latin.</p>

```ruby

text=Pangram anyone? A quick brown fox jumped over the lazy dog. Pack my box with five dozen liquor jugs. A quick movement of the enemy will jeopardize six gunboats. The five boxing wizards jump quickly.

Nretnil::Translate.pig_latin(text)
# => Angrampay anyoneway? AWAY ickquay ownbray oxfay umpedjay overway ethay azylay ogday. Ackpay ymay oxbay ithway ivefay ozenday iquorlay ugsjay. AWAY ickquay ovementmay ofway ethay enemyway illway eopardizejay ixsay unboatsgay. Ethay ivefay oxingbay izardsway umpjay icklyquay.

Nretnil::Translate.pig_latin(text, true)
# => Angram-pay anyone-way? A-WAY ick-quay own-bray ox-fay umped-jay over-way e-thay azy-lay og-day. Ack-pay y-may ox-bay ith-way ive-fay ozen-day iquor-lay ugs-jay. A-WAY ick-quay ovement-may of-way e-thay enemy-way ill-way eopardize-jay ix-say unboats-gay. E-thay ive-fay oxing-bay izards-way ump-jay ickly-quay.

```

<h3>Scramble Translate</h3>
<p>This will take each work in your text and manipulate it by keeping the first and last letter the same and scrambling the middle of it.  This should keep the text readable.</p>

```ruby

text=Pangram anyone? A quick brown fox jumped over the lazy dog. Pack my box with five dozen liquor jugs. A quick movement of the enemy will jeopardize six gunboats. The five boxing wizards jump quickly.

Nretnil::Translate.scramble(text)
# => Pngraam anoyne? A qcuik bowrn fox jmpeud oevr the lazy dog. Pcak my box wtih fvie deozn liqour jugs. A qcuik mvemnoet of the eemny will joapdrziee six gabnotus. The fvie bixong wriadzs jmup qcuikly.

```
