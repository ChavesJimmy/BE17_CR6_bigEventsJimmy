<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',TextType::class, ['attr'=>['class' => 'form-control']])
            ->add('date',TextType::class)
            ->add('startTime',TimeType::class, ['attr'=>['class'=>'time']])
            ->add('description',TextareaType::class, [])
            ->add('image')
            ->add('capacity')
            ->add('contactEmail')
            ->add('contactPhone')
            ->add('address')
            ->add('URL')
            ->add('type',ChoiceType::class,['choices'=>[
                'theater'=>'theater', 'christmas'=>'christmas', 'sport'=>'sport', 'music'=>'music', 'other'=>'other'
            ],
            'attr'=>['class'=>'type']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
