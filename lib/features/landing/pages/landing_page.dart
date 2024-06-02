import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            HeroSection(),
            CarsSection(),
            ServiceSection(),
            Text("Testimonial Section"),
            Text("About Us Section"),
            Text("Footer Section"),
          ],
        ),
      ),
    );
  }
}

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class CarsSection extends StatelessWidget {
  const CarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Inventory',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 8.h),
        Text(
          'Experience the future of automotive innovation with our latest car models',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 24.h),
        LayoutBuilder(
          builder: (context, constraints) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SizedBox(
              width: constraints.maxWidth > 1024
                  ? constraints.maxWidth * 0.6
                  : constraints.maxWidth,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: constraints.maxWidth > 1024
                      ? 3
                      : constraints.maxWidth > 768
                          ? 2
                          : 1,
                  crossAxisSpacing: 16.w,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 3 / 4,
                ),
                shrinkWrap: true,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => const CarGridTile(),
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('See All'),
          ),
        ),
      ],
    );
  }
}

class CarGridTile extends StatelessWidget {
  const CarGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.w),
        border: Border.all(width: 1.w, color: Colors.grey.shade300),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://img.freepik.com/free-photo/view-3d-car_23-2150796896.jpg',
            fit: BoxFit.cover,
            width: double.maxFinite,
            errorBuilder: (context, error, stackTrace) => const Icon(
              Icons.error,
              size: 150,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Volswagen Polo GT",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(height: 8.h),
          Row(
            children: List.generate(
              5,
              (index) => const Icon(
                Icons.star,
                size: 12,
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: Wrap(
              runSpacing: 16.h,
              spacing: 16.w,
              alignment: WrapAlignment.spaceBetween,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "6 Seat",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "2024",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "Petrol",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "2 Door",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "5 Person",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.vertical_shades_closed,
                      size: 16,
                    ),
                    Text(
                      "80 Km",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹ 1200 / day",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Book Now'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log('constraints: $constraints');
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Row(
            mainAxisAlignment: constraints.maxWidth >= 1024
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Easy And Fast Way\nTo Rent Your Car',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'We offer a wide range of rental cars to suit your needs. Whether\nyou\'re planning a weekend getaway or a business trip.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 20.h),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Rent Car'),
                  ),
                ],
              ),
              if (constraints.maxWidth >= 1024) ...[
                Image.asset(
                  'images/car.png',
                  width: constraints.maxWidth * 0.3,
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'images/logo.svg',
                width: constraints.maxWidth < 600 ? 80.w : 100.w,
              ),
              if (constraints.maxWidth > 1024) ...[
                const Row(
                  children: [
                    NavItem(title: 'Home'),
                    NavItem(title: 'Cars'),
                    NavItem(title: 'Services'),
                    NavItem(title: 'Testimonials'),
                    NavItem(title: 'About Us'),
                  ],
                )
              ],
              ElevatedButton(onPressed: () {}, child: const Text("Login")),
            ],
          );
        },
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;

  const NavItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TextButton(
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}
