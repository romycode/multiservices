<?php

declare(strict_types=1);

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Attribute\Route;

#[Route(path: '/')]
class HealthGetController extends AbstractController
{
    public function __invoke(Request $request): mixed
    {
        return new JsonResponse(["data" => "alive!"]);
    }
}
