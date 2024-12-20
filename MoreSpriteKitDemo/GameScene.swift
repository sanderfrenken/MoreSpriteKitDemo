import SpriteKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        backgroundColor = .darkGray
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        addButtons()
    }

    private func addButtons() {
        addButton(buttonName: .emitterLabel, position: CGPoint(x: 0, y: 250), scene: self)
        addButton(buttonName: .animatedLabel, position: CGPoint(x: 0, y: 200), scene: self)
        addButton(buttonName: .shakeAction, position: CGPoint(x: 0, y: 150), scene: self)
        addButton(buttonName: .spiralAction, position: CGPoint(x: 0, y: 100), scene: self)
        addButton(buttonName: .radialGradient, position: CGPoint(x: 0, y: 50), scene: self)
        addButton(buttonName: .arrowNode, position: CGPoint(x: 0, y: 0), scene: self)
        addButton(buttonName: .button, position: CGPoint(x: 0, y: -50), scene: self)
        addButton(buttonName: .linearGradient, position: CGPoint(x: 0, y: -100), scene: self)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        guard let view = self.view else { return }
        let sceneSize = view.frame.size
        if let touch = touches.first {
            let nodeNameTouched = self.atPoint(touch.location(in: self)).name ?? ""
            if nodeNameTouched == ButtonName.animatedLabel.rawValue {
                view.presentScene(DemoSceneAnimatedLabel(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.radialGradient.rawValue {
                view.presentScene(DemoSceneRadialGradient(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.arrowNode.rawValue {
                view.presentScene(DemoSceneArrowNode(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.shakeAction.rawValue {
                view.presentScene(DemoSceneShakeAction(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.spiralAction.rawValue {
                view.presentScene(DemoSceneSpiralAction(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.emitterLabel.rawValue {
                view.presentScene(DemoSceneEmitterLabel(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.button.rawValue {
                view.presentScene(DemoSceneButton(size: sceneSize), transition: getDefaultTransition())
            } else if nodeNameTouched == ButtonName.linearGradient.rawValue {
                view.presentScene(DemoSceneLinearGradient(size: sceneSize), transition: getDefaultTransition())
            }
        }
    }
}
