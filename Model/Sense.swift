//
//  File.swift
//
//
//  Created by Murilo Correa Pasquim on 02/02/24.
//

import Foundation
import SwiftUI

typealias Speeches = [Object: String]

struct Sense : Identifiable {
    let id = UUID()
    
    let name : String
    let color : String
    let image : String
    let icon : String
    let tutorialtText : String
    let speeches : Speeches
    
    static let senses : [Pages: Sense] = [
        .iris: Sense(name: "Iris", color: "greenIris", image: "iris", icon: "irisSmallColored", tutorialtText: "Sometimes, we need a little bit of light to feel comfortable enough to sleep, but we can't overdo it.", speeches: [.light: "LIGHT", .celphone: "Telas e celulares de um modo geral não são bons antes de dormir. Experimente habilitar o filtro de luz azul após o entardecer, seu sono irá melhorar!"]),
        .melody: Sense(name: "Melody", color: "yellowMelody", image: "melody", icon: "melodySmallColored", tutorialtText: "Loud sounds are specialists in disturbing our attempts at trying to fall asleep. Our brain interprets noise as a danger sign and, as a result, keeps us awake.", speeches: [.book: "Leituras pela noite nos ajudam a desviar a atenção do celular. Especialmente se tivermos uma boa iluminação para ler!", .animal: "Animais de estimação podem nos trazer uma sensaão de conforto. Menos quando eles fazem muito barulho", .celphone: "Celulares fora do modo Sono pela noite não rola, experimente habilitar o Modo Sono para seu sono melhorar!", .computer: "Desligue as telas antes de dormir, o computador também!"]),
        .phil : Sense(name: "Phil", color: "brownPhil", image: "phil", icon: "philSmallColored", tutorialtText: "The environment’s temperature greatly impacts our comfort level. When we're cold, our body shivers to generate heat, yet that also makes us more awake.", speeches: [.animal: "ANIMAL", .socks: "ANIMAL", .window: "WINDOW", .mug: "Quando está frio, uma bebida quente nos ajuda a pegar no sono!", .pijama: "Roupas confortáveis são essenciais para dormir bem, nem muito quente, nem muito frio"]),
        .musk : Sense(name: "Musk", color: "purpleMusk", image: "musk", icon: "muskSmallColored", tutorialtText: "Unpleasant smells such as smoke, dust or even body odors can distract us when we are trying to sleep.", speeches: [.window: "TEXTOBOOK_MUSK", .flavoring: "Um bom aroma pode nos ajudar a dormir. Experimente cheiros calmantes como Camomila e Lavanda para criar um lugar de repouso cheiroso"]),
        .thea : Sense(name: "Thea", color: "redThea", image: "thea", icon: "theaSmallColored", tutorialtText: "The environment’s temperature greatly impacts our comfort level. When we're cold, our body shivers to generate heat, yet that also makes us more awake.", speeches: [.mug: "Um chá de camomila pela noite, a verdadeira receita para pegar no sono!", .food: "Comidas gordurosas são um pouco indigestas quando antes de dormir.", .pijama: "Experimente uma roupa macia, nada de tecidos ásperos, escolha também roupas elásticas, costumamos nos virar muito quando dormirmos!"])
    ]
}
