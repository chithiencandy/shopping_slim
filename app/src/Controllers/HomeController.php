<?php

namespace App\Controllers;

use App\Models\User;

class HomeController extends Controller {

    public function index($request, $response) {
        //$user = User::where('username','candy')->first();
        //var_dump($user['attributes']);
        
        $animtes = ['bounce','flash','pulse','rubberBand','shake','headShake','swing','tada','wobble','jello','bounceIn','bounceInDown'
            ,'bounceInLef','bounceInRight','bounceInUp','bounceOut','bounceOutDown','bounceOutLeft','bounceOutRight','bounceOutUp','fadeIn','fadeInDown','fadeInDownBig'
            ,'fadeInLeft','fadeInLeftBig','fadeInRight','fadeInRightBig','fadeInUp','fadeInUpBig','fadeOut','fadeOutDown','fadeOutDownBig','fadeOutLeft',
            'fadeOutLeftBig','fadeOutRight','fadeOutRightBig','fadeOutUp','fadeOutUpBig','flipInX','flipInY','fliputX','flipOutY','lightSpeedIn','lightSpeedOut',
            'rotateIn','rotateInDownLeft','rotateInDownRight','rotateInUpLeft','rotateInUpRight','rotateOut','rotateOutDownLeft','rotateOutDownRight','rotateOutUpLeft',
            'rotateOutUpRight','hinge','jackInTheBox','rollIn','rolOut','zoomIn','zoomInDown','zoomInLeft','zoomInRight','zoomInUp','zoomOut','zoomOutDown','zoomOutLeft',
            'zoomOutRight','zoomOutUp','slideInDown','slideInLeft','slideInRight','slideInUp','slideOutDown','slideOutLeft','slideOutRight','slideOutUp'];
        $magics = ['magic','twisterInDown','twisterInUp','swap','--','puffIn','puffOut','vanishIn','vanishOut','--','openDownLeft','openDownRight','openUpLeft','openUpRight','openDownLeftReturn','openDownRightReturn','openUpLeftReturn','openUpRghtReturn','--','openDownLeftOut','openDownRightOut','openUpLeftOut','openUpRightOut','--','holeOut','tinDownIn','tinRightIn','swashOut','holeOut'];
        return $this->view->render($response, 'home.twig',[
            'animates' => $animtes,
            'magics' => $magics
        ]);
    }

}
