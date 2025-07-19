
import SwiftUI

struct Word {
    var english: String
    var japanese: String
}

class studyenglish: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var words: [Word] = [
        Word(english: "bet", japanese: "了解／OK"),
        Word(english: "cap", japanese: "ウソ"),
        Word(english: "no cap", japanese: "ガチ／本当"),
        Word(english: "slay", japanese: "キマってる／最高"),
        Word(english: "rizz", japanese: "モテ力／口説きテク"),
        Word(english: "mid", japanese: "微妙／普通すぎ"),
        Word(english: "drip", japanese: "おしゃれ／服装センス"),
        Word(english: "bussin", japanese: "激ウマ"),
        Word(english: "sus", japanese: "怪しい"),
        Word(english: "goated", japanese: "最強／神レベル"),
        Word(english: "fire", japanese: "超いい／ヤバい"),
        Word(english: "dead", japanese: "爆笑した"),
        Word(english: "delulu", japanese: "妄想強すぎ"),
        Word(english: "NPC", japanese: "個性ない人／変な人"),
        Word(english: "extra", japanese: "やりすぎな人"),
        Word(english: "basic", japanese: "つまんない／個性ない"),
        Word(english: "baddie", japanese: "かっこいい女子"),
        Word(english: "clean", japanese: "超おしゃれ"),
        Word(english: "slaps", japanese: "最高（特に音楽）"),
        Word(english: "💀", japanese: "笑死／終わったわ"),
        Word(english: "skibidi", japanese: "変な動き／ギャグ（ミーム）"),
        Word(english: "simp", japanese: "尽くしすぎる人"),
        Word(english: "clown", japanese: "バカ／笑われ者"),
        Word(english: "stan", japanese: "推す／超応援する"),
        Word(english: "shade", japanese: "悪口／ディス"),
        Word(english: "tea", japanese: "ゴシップ／噂"),
        Word(english: "mood", japanese: "それな／共感"),
        Word(english: "iconic", japanese: "伝説級"),
        Word(english: "woke", japanese: "意識高い"),
        Word(english: "vibing", japanese: "楽しんでる"),
        Word(english: "touch grass", japanese: "現実見て／外出ろ"),
        Word(english: "main character", japanese: "主人公感ある人"),
        
    ]
    var slangs: [Word] = [
        Word(english: "bet", japanese: "了解／OK"),
        Word(english: "cap", japanese: "ウソ"),
        Word(english: "no cap", japanese: "ガチ／本当"),
        Word(english: "slay", japanese: "キマってる／最高"),
        Word(english: "rizz", japanese: "モテ力／口説きテク"),
        Word(english: "mid", japanese: "微妙／普通すぎ"),
        Word(english: "drip", japanese: "おしゃれ／服装センス"),
        Word(english: "bussin", japanese: "激ウマ"),
        Word(english: "sus", japanese: "怪しい"),
        Word(english: "goated", japanese: "最強／神レベル"),
        Word(english: "fire", japanese: "超いい／ヤバい"),
        Word(english: "dead", japanese: "爆笑した"),
        Word(english: "delulu", japanese: "妄想強すぎ"),
        Word(english: "NPC", japanese: "個性ない人／変な人"),
        Word(english: "extra", japanese: "やりすぎな人"),
        Word(english: "basic", japanese: "つまんない／個性ない"),
        Word(english: "baddie", japanese: "かっこいい女子"),
        Word(english: "clean", japanese: "超おしゃれ"),
        Word(english: "slaps", japanese: "最高（特に音楽）"),
        Word(english: "💀", japanese: "笑死／終わったわ"),
        Word(english: "skibidi", japanese: "変な動き／ギャグ（ミーム）"),
        Word(english: "simp", japanese: "尽くしすぎる人"),
        Word(english: "clown", japanese: "バカ／笑われ者"),
        Word(english: "stan", japanese: "推す／超応援する"),
        Word(english: "shade", japanese: "悪口／ディス"),
        Word(english: "tea", japanese: "ゴシップ／噂"),
        Word(english: "mood", japanese: "それな／共感"),
        Word(english: "iconic", japanese: "伝説級"),
        Word(english: "woke", japanese: "意識高い"),
        Word(english: "vibing", japanese: "楽しんでる"),
        Word(english: "touch grass", japanese: "現実見て／外出ろ"),
        Word(english: "main character", japanese: "主人公感ある人"),
    ]
    
    var phrases: [Word] = [
        Word(english: "I’m dead", japanese: "笑いすぎて死ぬ"),
        Word(english: "I’m weak", japanese: "ウケる／爆笑"),
        Word(english: "say less", japanese: "もう言わなくていい／了解"),
        Word(english: "he/she ate", japanese: "やりきった／完璧だった"),
        Word(english: "it’s giving", japanese: "〜って感じがする"),
        Word(english: "ate and left no crumbs", japanese: "完璧にやりきった"),
        Word(english: "I'm him/her", japanese: "自信満々／俺が最強"),
        Word(english: "vibe check", japanese: "空気読んでる？"),
        Word(english: "spill the tea", japanese: "秘密教えて"),
        Word(english: "you snapped", japanese: "完璧すぎる／やったね！"),
        Word(english: "What’s the move?", japanese: "次どうする？／どこ行く？"),
        Word(english: "That’s wild", japanese: "それヤバすぎ"),
        Word(english: "I can’t", japanese: "もうムリ／ヤバすぎ（感情限界）"),
        Word(english: "I’m not okay", japanese: "メンタル崩壊w（冗談ぽく）"),
        Word(english: "This ain’t it", japanese: "これは微妙／ダメだわ"),
        Word(english: "Do you even go here?", japanese: "（場違いな人に）あなた誰？"),
        Word(english: "You ate that", japanese: "めっちゃ決まってた"),
        Word(english: "Lowkey I like it", japanese: "ちょっと実は好きかも"),
        Word(english: "Highkey I’m obsessed", japanese: "めっちゃハマってる"),
    ]

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return words.count
        } else if section == 1 {
            return slangs.count
        } else if section == 2 {
            return phrases.count
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if indexPath.section == 0 {
            cell.contentConfiguration = UIHostingConfiguration {
                HStack {
                    Text(words[indexPath.row].english)
                    Spacer()
                    Text(words[indexPath.row].japanese)
                }
            }
        } else if indexPath.section == 1 {
            cell.contentConfiguration = UIHostingConfiguration {
                HStack {
                    Text(slangs[indexPath.row].english)
                    Spacer()
                    Text(slangs[indexPath.row].japanese)
                }
            }
        } else if indexPath.section == 2 {
            cell.contentConfiguration = UIHostingConfiguration {
                HStack {
                    Text(phrases[indexPath.row].english)
                    Spacer()
                    Text(phrases[indexPath.row].japanese)
                }
            }
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "単語"
        } else if section == 1 {
            return "よく使うフレーズ"
        } else if section == 2 {
           return "スラング"
        }
        return ""
    }
}

