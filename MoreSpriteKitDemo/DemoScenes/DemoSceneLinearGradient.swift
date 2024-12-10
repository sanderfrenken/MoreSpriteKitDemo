import MoreSpriteKit
import SpriteKit

class DemoSceneLinearGradient: DemoScene {

    override func didMove(to view: SKView) {
        super.didMove(to: view)
        addLinearGradient()
    }

    var arrowNode = SKNode()

    private func addLinearGradient() {
        let linearGradientSize = CGSize(width: 150, height: 30)
        let linearGradientColors: [UIColor] = [.red, .yellow, .green, .yellow, .red]
        let linearGradientLocations: [CGFloat] = [0, 0.35, 0.5, 0.65, 1.0]

        let linearGradientTexture = SKTexture(linearGradientWithColors: linearGradientColors,
                                              locations: linearGradientLocations,
                                              size: linearGradientSize)

        let gradientNode = SKSpriteNode(texture: linearGradientTexture)
        addChild(gradientNode)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }

}
